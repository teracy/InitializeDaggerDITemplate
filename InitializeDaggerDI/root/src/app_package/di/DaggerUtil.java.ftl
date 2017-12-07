package ${packageName}.di;

import android.app.Activity;
import android.support.annotation.NonNull;

import ${packageName}.App;
import ${packageName}.di.activity.ActivityComponentBuilder;

public class DaggerUtil {
  @NonNull
  public static ActivityComponentBuilder getComponentBuilder(@NonNull Activity activity) {
      return App.getAppComponent().getActivityComponentBuilders().get(activity.getClass());
  }
}
