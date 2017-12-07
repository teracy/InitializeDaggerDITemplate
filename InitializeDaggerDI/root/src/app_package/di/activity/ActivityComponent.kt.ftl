package ${packageName}.di.activity

import android.app.Activity
import android.support.v4.app.Fragment
import dagger.MembersInjector
import ${packageName}.di.fragment.FragmentComponentBuilder

interface ActivityComponent<T : Activity> : MembersInjector<T> {
    fun getFragmentComponentBuilders(): Map<Class<out Fragment>, FragmentComponentBuilder<*, *>>
}

interface ActivityComponentBuilder<M : ActivityModule<*>, C : ActivityComponent<*>> {
    fun getBuilder(activityModule: M): ActivityComponentBuilder<M, C>
    fun build(): C
}
