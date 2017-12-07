package ${packageName}.di.activity

import dagger.Binds
import dagger.Module
import dagger.multibindings.IntoMap
import ${packageName}.view.activity.SampleActivity
import ${packageName}.view.activity.SampleActivityComponent

// TODO: Modify @Module annotation accordingly
@Module(subcomponents = arrayOf(SampleActivityComponent::class))
abstract class ActivityBindingModule {
    @Binds
    @IntoMap
    @ActivityMapKey(SampleActivity::class)
    abstract fun sampleActivityComponentBuilder(builder: SampleActivityComponent.Builder): ActivityComponentBuilder<*, *>

    // NOTE: Add injection map here
}
