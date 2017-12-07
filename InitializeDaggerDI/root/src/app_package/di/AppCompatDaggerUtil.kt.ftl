package ${packageName}.di

import android.support.v7.app.AppCompatActivity
import ${packageName}.App
import ${packageName}.di.activity.ActivityComponentBuilder

class DaggerUtil {
    companion object {
        @Suppress("UNCHECKED_CAST")
        fun <T : ActivityComponentBuilder<*, *>> getComponentBuilder(activity: AppCompatActivity): T {
            return App.appComponent.activityComponentBuilders().get(activity.javaClass) as T
        }
    }
}
