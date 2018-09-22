package com.gmail.republicweb1.republicweb;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class ProfilActivity extends AppCompatActivity {

    private TextView mTextMessage;

    TextView txt_f_name, txt_username, txt_Dou;
    String f_name, username
            , dou
            ;
    Button btn_logout;
    SharedPreferences sharedpreferences;

    public final static String TAG_USERNAME = "username";
    public final static String TAG_F_name = "f_name";
    public final static String TAG_DOU = "degree_of_user";

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation_home:
                    mTextMessage.setText(R.string.title_home);
                    Intent intentku = new Intent(ProfilActivity.this, MainActivity.class);
                    finish();
                    startActivity(intentku);
                    return true;
                case R.id.navigation_profil:
                    mTextMessage.setText(R.string.title_profile);
                    Intent intent = new Intent(ProfilActivity.this, ProfilActivity.class);
                    finish();
                    startActivity(intent);
                    return true;
            }
            return false;
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profil);

        txt_f_name = (TextView) findViewById(R.id.txt_f_name);
        txt_username = (TextView) findViewById(R.id.txt_username);
        txt_Dou=(TextView)findViewById(R.id.tvDou);
        btn_logout = (Button) findViewById(R.id.btn_logout);


        f_name = getIntent().getStringExtra(TAG_F_name);
        username = getIntent().getStringExtra(TAG_USERNAME);
        dou=getIntent().getStringExtra(TAG_DOU);


        sharedpreferences = getSharedPreferences(Login.my_shared_preferences, Context.MODE_PRIVATE);

        txt_f_name.setText(": " + f_name);
        txt_username.setText(": " + username);
        txt_Dou.setText(": "+dou);

        BottomNavigationView bottomNavigationView = (BottomNavigationView) findViewById(R.id.bottomNavView_Bar);
        BottomNavigationViewHelper.disableShiftMode(bottomNavigationView);
        Menu menu = bottomNavigationView.getMenu();
        MenuItem menuItem = menu.getItem(0);
        menuItem.setChecked(true);

        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                switch (item.getItemId()){

                    case R.id.navigation_home:
                        Intent intent1 = new Intent(ProfilActivity.this, MainActivity.class);
                        startActivity(intent1);
                        break;

                    case R.id.navigation_profil:
//                        Intent intent2 = new Intent(ProfilActivity.this, ProfilActivity.class);
//                        startActivity(intent2);
                        break;

                }

                return false;
            }
        });

        btn_logout.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                // TODO Auto-generated method stub
                // update login session ke FALSE dan mengosongkan nilai nama dan username
                SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putBoolean(Login.session_status, false);
                editor.putString(TAG_F_name, null);
                editor.putString(TAG_USERNAME, null);
                editor.putString(TAG_DOU, null);
                editor.commit();

                Intent intent = new Intent(ProfilActivity.this, Login.class);
                finish();
                startActivity(intent);
            }
        });


    }

    }
