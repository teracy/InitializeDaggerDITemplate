package ${packageName}.view.activity;

import android.arch.lifecycle.ViewModelProviders;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import javax.inject.Inject;

import ${packageName}.R;
import ${packageName}.di.DaggerUtil;
import ${packageName}.di.activity.FragmentComponentBuilderHost;
import ${packageName}.di.fragment.FragmentComponentBuilder;
import ${packageName}.view.fragment.SampleFragment;
import ${packageName}.viewmodel.SampleViewModel;

public class SampleActivity extends AppCompatActivity implements FragmentComponentBuilderHost {
    @Inject
    String sampleText;

    private SampleActivityComponent activityComponent;
    private SampleViewModel viewModel = null;

    @SuppressWarnings("unchecked")
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sample);
        activityComponent = (SampleActivityComponent) DaggerUtil.getComponentBuilder(this)
                .getBuilder(new SampleActivityComponent.SampleActivityModule(this))
                .build();
        activityComponent.injectMembers(this);
        viewModel = ViewModelProviders.of(this).get(SampleViewModel.class);
        if (viewModel != null) {
            // TODO: Add implementation
        }
        TextView textView = findViewById(R.id.text);
        textView.setText(sampleText);

        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        transaction.replace(R.id.container, SampleFragment.newInstance());
        transaction.commit();
    }

    @SuppressWarnings("unchecked")
    @Override
    public <T extends FragmentComponentBuilder> T getFragmentComponentBuilder(Fragment fragment) {
        return (T) activityComponent.getFragmentComponentBuilders().get(fragment.getClass());
    }
}
