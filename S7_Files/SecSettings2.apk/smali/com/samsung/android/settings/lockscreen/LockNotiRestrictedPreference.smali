.class public Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;
.super Lcom/android/settings/SecDropDownPreference;
.source "LockNotiRestrictedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;,
        Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;,
        Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;,
        Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

.field private mUserClicked:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->isRestrictedForEntry(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->isUserClicked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .locals 1
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;I)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getRestrictedItemForPosition(I)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Z)V
    .locals 0
    .param p1, "userClicked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setUserClicked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    .line 167
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getSpinner()Landroid/widget/Spinner;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    .line 55
    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    .line 50
    return-void
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .locals 4
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 102
    if-nez p1, :cond_0

    .line 103
    return-object v3

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    .line 106
    .local v0, "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    return-object v0

    .line 110
    .end local v0    # "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    :cond_2
    return-object v3
.end method

.method private getRestrictedItemForPosition(I)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 114
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 115
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, p1

    .line 118
    .local v0, "entryValue":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v1

    return-object v1
.end method

.method private isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    return v3

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    .line 94
    .local v0, "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const/4 v2, 0x1

    return v2

    .line 98
    .end local v0    # "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    :cond_2
    return v3
.end method

.method private isUserClicked()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    return v0
.end method

.method private setUserClicked(Z)V
    .locals 0
    .param p1, "userClicked"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    .line 159
    return-void
.end method


# virtual methods
.method public addRestrictedItem(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public clearRestrictedItems()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    return-void
.end method

.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/Spinner;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    move-result-object v0

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->setPreference(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)V

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->onBindView(Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
    const v1, 0x7f110456

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "restrictedIcon":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_0
    return-void

    .line 85
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mPreClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mPreClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 130
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 144
    return-void

    .line 146
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    .line 141
    return-void
.end method

.method public setOnPreClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mPreClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 268
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 69
    return-void
.end method
