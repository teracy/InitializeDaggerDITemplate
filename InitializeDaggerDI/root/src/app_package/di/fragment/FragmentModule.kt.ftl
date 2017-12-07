package ${packageName}.di.fragment

import android.support.v4.app.Fragment
import dagger.Module
import dagger.Provides
import ${packageName}.di.scope.FragmentScope

@Module
abstract class FragmentModule<out T : Fragment>(protected val fragment: T) {
    @Provides
    @FragmentScope
    fun provideFragment(): T {
        return fragment
    }

    // NOTE: Add dependencies here
}
