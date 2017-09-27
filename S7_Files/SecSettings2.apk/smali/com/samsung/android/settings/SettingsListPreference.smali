.class public Lcom/samsung/android/settings/SettingsListPreference;
.super Landroid/preference/ListPreference;
.source "SettingsListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SettingsListPreference$FullScreeListArrayAdapter;
    }
.end annotation


# instance fields
.field protected mDialog:Landroid/app/Dialog;

.field private mListItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/SettingsListPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const v0, 0x7f0400cf

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SettingsListPreference;->setDialogLayoutResource(I)V

    .line 41
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SettingsListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/samsung/android/settings/SettingsListPreference$FullScreeListArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getValueIndex()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/SettingsListPreference$FullScreeListArrayAdapter;-><init>(Lcom/samsung/android/settings/SettingsListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference;->mListItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Lcom/samsung/android/settings/SettingsListPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SettingsListPreference$1;-><init>(Lcom/samsung/android/settings/SettingsListPreference;)V

    .line 97
    .local v0, "listItemListener":Landroid/widget/AdapterView$OnItemClickListener;
    iput-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference;->mListItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 99
    .end local v0    # "listItemListener":Landroid/widget/AdapterView$OnItemClickListener;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference;->mListItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v1
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getDialogLayoutResource()I

    move-result v1

    if-nez v1, :cond_0

    .line 146
    return-object v2

    .line 148
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 149
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getDialogLayoutResource()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    .line 226
    return-void
.end method

.method public rotateSettingsListPreference()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 154
    return-void

    .line 155
    :cond_0
    const v1, 0x7f1102b5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 156
    .local v8, "headerBar":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 158
    const-string/jumbo v2, "current_sec_active_themepackage"

    .line 157
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    const v1, 0x7f0200d8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 162
    :cond_1
    const v1, 0x7f1102b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Toolbar;

    .line 163
    .local v11, "toolBar":Landroid/widget/Toolbar;
    new-instance v1, Lcom/samsung/android/settings/SettingsListPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/SettingsListPreference$2;-><init>(Lcom/samsung/android/settings/SettingsListPreference;)V

    invoke-virtual {v11, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    :cond_2
    const v1, 0x7f110248

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/samsung/android/settings/SettingsListPreference;->mListView:Landroid/widget/ListView;

    .line 176
    .local v9, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getValueIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v2, v3, v5}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 187
    .local v10, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a0466

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 188
    const v2, 0x7f0a045c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 187
    add-int/2addr v1, v2

    .line 189
    const v2, 0x7f0a046b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 187
    add-int v4, v1, v2

    .line 190
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v9}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 192
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->onAttachedToActivity()V

    .line 200
    invoke-virtual {v9}, Landroid/widget/ListView;->requestFocus()Z

    .line 152
    return-void

    .line 194
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_4
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v9}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 195
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 114
    return-void

    .line 117
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/SettingsListPreference;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/samsung/android/settings/SettingsListPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    :cond_2
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    .line 124
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 125
    iget-object v4, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 126
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const v5, 0x7f0f0283

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 128
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SettingsListPreference;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/SettingsListPreference;->setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    if-eqz p1, :cond_3

    .line 133
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 136
    :cond_3
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 138
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method
