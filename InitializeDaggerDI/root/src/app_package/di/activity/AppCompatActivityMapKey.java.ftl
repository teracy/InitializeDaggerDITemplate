package ${packageName}.di.activity;

import android.support.v7.app.AppCompatActivity;

import dagger.MapKey;

@MapKey
public @interface ActivityMapKey {
    Class<? extends AppCompatActivity> value();
}
