<?php

namespace App\Http\Controllers\Auth;
 
use App\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use Illuminate\Http\Request;
use Redirect;
use View;
use Auth;
use Input;
use DB;
class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    //protected $redirectTo = '/';

    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'logout']);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    /*
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'fname' => 'required|max:20',
			'lname' => 'required|max:20',
            'email' => 'required|email|max:255|unique:users',
			'mobile'  => 'required|numeric',
            'password' => 'required|min:6',
        ]);
    }
    

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    
    /*protected function create(array $data)
    {
        return User::create([
            'fname' => $data['fname'],
			'lname' => $data['lname'],
            'email' => $data['email'],
			'mobile' => $data['mobile'],
            'password' => bcrypt($data['password']),
        ]);
    }
    */
	

    public function register() {
        // checking file is valid.
        $messages = array(
          'email.required'=>'Email is required',
          'fname.required'=>'First name is required',
          'lname.required'=>'Last Name is required',
          'mobile.required'=>'mobile no. is required',
          'password.required'=>'Password is required'
        );

        $rules = array(
          'email'  => 'required|email|unique:users',
          'fname'   => 'required',
          'lname'   => 'required',
          'mobile'  => 'required|numeric',
          'password'   => 'required|min:6',
        );
        $validator = Validator::make(Input::all(), $rules,$messages);
        if ($validator->fails()) {
            return $validator->messages()->all();
        } else {

            $user = new User;
            $user->fname   = Input::get('fname');
            $user->lname   = Input::get('lname');
            $user->email  = Input::get('email');
            $user->password = bcrypt(Input::get('password'));
            $user->mobile = Input::get('mobile');
            $user->save();
            
            //authenticating register user
            $email=Input::get('email');
            $password=Input::get('password');
            if (Auth::attempt(['email' => $email, 'password' => $password]))
            {
                return "success";
            }
        }
    }

	public function login()
    {
        //authenticating login user
		$type=Input::get('type');
        if($type != "") {
	    $email=Input::get('email');
		$password=Input::get('password');
		$check_userType = DB::select('SELECT * FROM users WHERE email="'. $email .'" AND user_type="'. $type .'"');
		if(count($check_userType) > 0) {
        if (Auth::attempt(['user_type' => $type, 'email' => $email, 'password' => $password]))
        {
            return "success";
        }
        else {
            return "username or password are incorrect";
        }
		}
		else {
           return "Invalid Login Credential";
		}
	   }
	   else {
			 return "Please select login type";
	   }
    }
}
