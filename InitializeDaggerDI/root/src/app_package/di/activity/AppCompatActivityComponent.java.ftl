package ${packageName}.di.activity;

import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;

import java.util.Map;

import dagger.MembersInjector;
import ${packageName}.di.fragment.FragmentComponentBuilder;

public interface ActivityComponent<T extends AppCompatActivity> extends MembersInjector<T> {
    Map<Class<? extends Fragment>, FragmentComponentBuilder> getFragmentComponentBuilders();
}
