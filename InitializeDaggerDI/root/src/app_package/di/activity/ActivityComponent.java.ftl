package ${packageName}.di.activity;

import android.app.Activity;
import android.support.v7.app.AppCompatActivity;

import java.util.Map;

import dagger.MembersInjector;
import ${packageName}.di.fragment.FragmentComponentBuilder;

public interface ActivityComponent<T extends Activity> extends MembersInjector<T> {
    Map<Class<? extends Fragment>, FragmentComponentBuilder> getFragmentComponentBuilders();
}
