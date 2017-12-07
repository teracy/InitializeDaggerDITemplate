package ${packageName}.di

import android.arch.lifecycle.ViewModel
import android.support.v7.app.AppCompatActivity
import ${packageName}.App
import ${packageName}.di.activity.ActivityComponentBuilder
import ${packageName}.di.viewmodel.ViewModelComponentBuilder

class DaggerUtil {
    companion object {
        @Suppress("UNCHECKED_CAST")
        fun <T : ActivityComponentBuilder<*, *>> getComponentBuilder(activity: AppCompatActivity): T {
            return App.appComponent.activityComponentBuilders().get(activity.javaClass) as T
        }

        @Suppress("UNCHECKED_CAST")
        fun <T : ViewModelComponentBuilder<*, *>> getComponentBuilder(viewModel: ViewModel): T {
            return App.appComponent.viewModelComponentBuilders().get(viewModel.javaClass) as T
        }
    }
}
