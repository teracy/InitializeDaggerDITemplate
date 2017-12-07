package ${packageName}

import android.app.Application
import ${packageName}.di.app.AppComponent
import ${packageName}.di.app.AppModule
import ${packageName}.di.app.DaggerAppComponent

class App : Application() {
  companion object {
    lateinit var appComponent: AppComponent
  }

  override fun onCreate() {
    super.onCreate()
    appComponent = DaggerAppComponent.builder().appModule(AppModule(this)).build()
    appComponent.inject(this)
  }
}
