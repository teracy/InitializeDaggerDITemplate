package ${packageName}.di.activity

import android.support.v7.app.AppCompatActivity
import dagger.Module
import dagger.Provides
import ${packageName}.di.scope.ActivityScope

@Module
abstract class ActivityModule<out T : AppCompatActivity>(protected val activity: T) {
    @Provides
    @ActivityScope
    fun provideActivity(): T {
        return activity
    }

    // NOTE: Add dependencies here
}
