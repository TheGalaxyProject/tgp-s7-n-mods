.class public Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeyboardBacklightDurationSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private durationValues:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const v3, 0x7f040149

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 32
    .local v23, "view":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 34
    .local v18, "mContext":Landroid/content/Context;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 35
    .local v13, "durationStringValues":[Ljava/lang/String;
    array-length v3, v13

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->durationValues:[I

    .line 36
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    .line 37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->durationValues:[I

    aget-object v4, v13, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v14

    .line 36
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 42
    .local v21, "strDurationValues":[Ljava/lang/String;
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 44
    .local v10, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x7f110413

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 45
    .local v17, "listView":Landroid/widget/ListView;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 49
    .local v20, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0a0466

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 50
    const v4, 0x7f0a045c

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 49
    add-int/2addr v3, v4

    .line 51
    const v4, 0x7f0a046b

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 49
    add-int v6, v3, v4

    .line 52
    .local v6, "divider_inset_size":I
    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 54
    .local v2, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_backlight_timeout"

    const/16 v5, 0xbb8

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 64
    .local v12, "dbDurationValue":I
    const/4 v15, 0x1

    .line 65
    .local v15, "indexOfDBdurationValue":I
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->durationValues:[I

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->durationValues:[I

    array-length v3, v3

    if-ge v14, v3, :cond_1

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->durationValues:[I

    aget v3, v3, v14

    if-ne v3, v12, :cond_3

    .line 67
    move v15, v14

    .line 72
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 74
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    .line 75
    .local v11, "adapterCount":I
    const/16 v22, 0x0

    .line 76
    .local v22, "totalHeight":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v11, :cond_4

    .line 77
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v3, v14, v4, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 78
    .local v16, "listItem":Landroid/view/View;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 79
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v22, v22, v3

    .line 76
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 56
    .end local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v11    # "adapterCount":I
    .end local v12    # "dbDurationValue":I
    .end local v15    # "indexOfDBdurationValue":I
    .end local v16    # "listItem":Landroid/view/View;
    .end local v22    # "totalHeight":I
    :cond_2
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 57
    .restart local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 65
    .restart local v12    # "dbDurationValue":I
    .restart local v15    # "indexOfDBdurationValue":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 82
    .restart local v11    # "adapterCount":I
    .restart local v22    # "totalHeight":I
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 83
    .local v19, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v3

    add-int/lit8 v4, v11, -0x1

    mul-int/2addr v3, v4

    add-int v3, v3, v22

    move-object/from16 v0, v19

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->requestLayout()V

    .line 87
    return-object v23
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->durationValues:[I

    aget v1, v2, p3

    .line 96
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/KeyboardBacklightDurationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 97
    const-string/jumbo v3, "key_backlight_timeout"

    .line 96
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "KeyboardBacklightDurationSettings"

    const-string/jumbo v3, "could not persist key backlight setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
