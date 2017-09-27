.class final Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "VirtualKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v9, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    const/4 v8, 0x0

    .line 159
    .local v8, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const v22, 0x7f0b15ad

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, "screenTitle":Ljava/lang/String;
    const-string/jumbo v22, "input_method"

    .line 161
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    .local v12, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v7

    .line 165
    .local v7, "immValues":Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v7}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 167
    invoke-virtual {v7}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v13

    .line 168
    .local v13, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v13, :cond_1

    const/4 v11, 0x0

    .line 169
    .local v11, "inputMethodCount":I
    :goto_0
    const/4 v6, 0x0

    .end local v8    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    .local v6, "i":I
    :goto_1
    if-ge v6, v11, :cond_3

    .line 170
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 171
    .local v10, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v22, 0x1

    .line 172
    move/from16 v0, v22

    invoke-virtual {v12, v10, v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v20

    .line 174
    .local v20, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v18

    .line 175
    .local v18, "subtypeCount":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    .line 176
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodSubtype;

    .line 177
    .local v17, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_0

    .line 178
    const/16 v22, 0x2c

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    .line 180
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 182
    .local v19, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 168
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "i":I
    .end local v10    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "inputMethodCount":I
    .end local v14    # "j":I
    .end local v17    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v18    # "subtypeCount":I
    .end local v19    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v20    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v8    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .restart local v11    # "inputMethodCount":I
    goto :goto_0

    .line 184
    .end local v8    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "i":I
    .restart local v10    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v14    # "j":I
    .restart local v18    # "subtypeCount":I
    .restart local v20    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 186
    .local v21, "summary":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v16

    .line 187
    .local v16, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 188
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 187
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v8, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 191
    .local v8, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 193
    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 194
    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 195
    iput-object v15, v8, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 196
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 198
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v10    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "j":I
    .end local v16    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v18    # "subtypeCount":I
    .end local v20    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v21    # "summary":Ljava/lang/String;
    :cond_3
    return-object v9
.end method
