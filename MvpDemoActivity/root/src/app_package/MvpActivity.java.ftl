package ${packageName}.activity;

import ${superClassFqcn};
import android.os.Bundle;
import ${packageName}.view.I${activityName}View;
import ${packageName}.presenter.${activityName}Presenter;
<#if (includeCppSupport!false) && generateLayout>
</#if>

public class ${activityName}Activity extends  BaseActivity<${activityName}Presenter> implements I${activityName}View{

     public static void start(Context context ) {
        Intent starter = new Intent(context, ${activityName}Activity_.class);
        context.startActivity(starter);
    }
 
	
	@Override
    public void initData(Bundle savedInstanceState) {
	}
	
	
	 @Override
    public int getLayoutId() {
	<#if generateLayout>
	    return R.layout.${layoutName};
	</#if>
    }

    @Override
    public ${activityName}Presenter newP() {
        return null;
    }
	
<#include "../../../../common/jni_code_snippet.java.ftl">
}
