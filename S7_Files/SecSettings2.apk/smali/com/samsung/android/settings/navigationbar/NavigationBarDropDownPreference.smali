.class public Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;
.super Landroid/preference/ListPreference;
.source "NavigationBarDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsSelectable:Z

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    const v0, 0x1010091

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 63
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    .line 178
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 72
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->updateEntries()V

    .line 62
    return-void
.end method

.method private updateEntries()V
    .locals 6

    .prologue
    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 127
    .local v0, "c":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "c":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFlag()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    .line 174
    return-void
.end method

.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/ListPreference;->notifyChanged()V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 146
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 154
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 160
    check-cast v1, Landroid/view/ViewGroup;

    .line 161
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 163
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 165
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 166
    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 167
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 168
    const v3, 0x7f0a02fb

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 169
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setSelection(I)V

    .line 152
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    .line 97
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->updateEntries()V

    .line 89
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, "selectedIndex":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setSelection(I)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 140
    return-void
.end method
