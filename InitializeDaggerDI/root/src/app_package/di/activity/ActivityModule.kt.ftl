package ${packageName}.di.activity

import android.app.Activity
import dagger.Module
import dagger.Provides
import ${packageName}.di.scope.ActivityScope

@Module
abstract class ActivityModule<out T : Activity>(protected val activity: T) {
    @Provides
    @ActivityScope
    fun provideActivity(): T {
        return activity
    }

    // NOTE: Add dependencies here
}
