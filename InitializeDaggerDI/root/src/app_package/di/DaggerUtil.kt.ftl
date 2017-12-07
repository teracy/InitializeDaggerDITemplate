package ${packageName}.di

import android.app.Activity
import ${packageName}.App
import ${packageName}.di.activity.ActivityComponentBuilder

class DaggerUtil {
    companion object {
        @Suppress("UNCHECKED_CAST")
        fun <T : ActivityComponentBuilder<*, *>> getComponentBuilder(activity: Activity): T {
            return App.appComponent.activityComponentBuilders().get(activity.javaClass) as T
        }
    }
}
