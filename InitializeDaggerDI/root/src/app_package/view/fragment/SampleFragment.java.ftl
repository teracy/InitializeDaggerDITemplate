package ${packageName}.view.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import javax.inject.Inject;

import ${packageName}.R;
import ${packageName}.di.activity.FragmentComponentBuilderHost;

public class SampleFragment extends Fragment {
    @Inject
    String sampleText;

    public SampleFragment() {
    }

    public static SampleFragment newInstance() {
        SampleFragment fragment = new SampleFragment();
        Bundle bundle = new Bundle();
        fragment.setArguments(bundle);
        return fragment;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        SampleFragmentComponent fragmentComponent = (SampleFragmentComponent) ((FragmentComponentBuilderHost) getActivity())
                .getFragmentComponentBuilder(this)
                .build();
        fragmentComponent.injectMembers(this);

        View view = inflater.inflate(R.layout.fragment_sample, container, false);
        TextView textView = view.findViewById(R.id.text);
        textView.setText(sampleText);
        return view;
    }
}
