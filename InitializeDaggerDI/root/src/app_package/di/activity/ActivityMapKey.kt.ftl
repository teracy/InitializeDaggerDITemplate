package ${packageName}.di.activity

import android.app.Activity
import dagger.MapKey
import kotlin.reflect.KClass

@MapKey
annotation class ActivityMapKey(val value: KClass<out Activity>)
