package com.gmail.republicweb1.republicweb;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.content.Intent;

public class MainActivity extends AppCompatActivity {

    private TextView mTextMessage;
    private Button Admin;
    private Button Customer;
    private Button Reseller;
    String f_name, username;
    SharedPreferences sharedpreferences;

    public final static String TAG_USERNAME = "username";
    public final static String TAG_F_name = "f_name";

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation_home:
                    mTextMessage.setText(R.string.title_home);
                    Intent intentku = new Intent(MainActivity.this, MainActivity.class);
                    finish();
                    startActivity(intentku);
                    return true;
                case R.id.navigation_profil:
                    mTextMessage.setText(R.string.title_profile);
                    Intent intent = new Intent(MainActivity.this, ProfilActivity.class);
                    finish();
                    startActivity(intent);
                    return true;
            }
            return false;
        }
    };

    @RequiresApi(api = Build.VERSION_CODES.CUPCAKE)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mTextMessage = (TextView) findViewById(R.id.message);
        Customer = (Button)findViewById(R.id.Customer);
        Reseller = (Button)findViewById(R.id.Reseller);

        f_name = getIntent().getStringExtra(TAG_F_name);
        username = getIntent().getStringExtra(TAG_USERNAME);

        sharedpreferences = getSharedPreferences(Login.my_shared_preferences, Context.MODE_PRIVATE);


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
//                        Intent intent1 = new Intent(MainActivity.this, ActivityOne.class);
//                        startActivity(intent1);
                        break;

                    case R.id.navigation_profil:
                        Intent intent2 = new Intent(MainActivity.this, ProfilActivity.class);
                        startActivity(intent2);
                        break;

                }

                return false;
            }
        });


        Reseller.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                // TODO Auto-generated method stub
                Intent intent = new Intent(MainActivity.this, Reseller.class);
                finish();
                startActivity(intent);
            }
        });

    }


}