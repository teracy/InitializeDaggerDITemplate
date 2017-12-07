package ${packageName}.di.app

import android.arch.lifecycle.ViewModel
import android.support.v7.app.AppCompatActivity
import dagger.Component
import ${packageName}.App
import ${packageName}.di.activity.ActivityBindingModule
import ${packageName}.di.activity.ActivityComponentBuilder
import javax.inject.Singleton

@Singleton
@Component(modules = arrayOf(AppModule::class, ActivityBindingModule::class))
interface AppComponent {
    fun inject(application: App)

    fun activityComponentBuilders(): Map<Class<out AppCompatActivity>, ActivityComponentBuilder<*, *>>
}
