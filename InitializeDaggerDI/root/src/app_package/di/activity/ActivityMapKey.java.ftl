package ${packageName}.di.activity;

import android.app.Activity;

import dagger.MapKey;

@MapKey
public @interface ActivityMapKey {
    Class<? extends Activity> value();
}
