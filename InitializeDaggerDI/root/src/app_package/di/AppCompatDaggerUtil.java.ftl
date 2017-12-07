package ${packageName}.di;

import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.App;
import ${packageName}.di.activity.ActivityComponentBuilder;

public class DaggerUtil {
    @NonNull
    public static ActivityComponentBuilder getComponentBuilder(@NonNull AppCompatActivity activity) {
        return App.getAppComponent().getActivityComponentBuilders().get(activity.getClass());
    }
}
