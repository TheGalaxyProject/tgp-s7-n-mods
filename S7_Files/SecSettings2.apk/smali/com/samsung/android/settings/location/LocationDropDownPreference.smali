.class public Lcom/samsung/android/settings/location/LocationDropDownPreference;
.super Landroid/preference/Preference;
.source "LocationDropDownPreference.java"


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

.field private mGranted:Z

.field private mIsRuntimePermission:Z

.field private mOnBlackList:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field private mPreferenceClicked:Z

.field private mSelectedPosition:I

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/location/LocationDropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/location/LocationDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    .line 62
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSelectedPosition:I

    .line 66
    iput-boolean v7, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    .line 81
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    .line 82
    const v6, 0x7f040260

    .line 81
    invoke-direct {v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 84
    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 86
    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 87
    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 88
    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/samsung/android/settings/location/LocationDropDownPreference$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/location/LocationDropDownPreference$1;-><init>(Lcom/samsung/android/settings/location/LocationDropDownPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 99
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPersistent(Z)V

    .line 100
    new-instance v4, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;-><init>(Lcom/samsung/android/settings/location/LocationDropDownPreference;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    sget-object v4, Lcom/android/settings/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 113
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 114
    .local v3, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 116
    aget-object v4, v1, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 78
    return-void
.end method

.method private getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 317
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 322
    .local v2, "permissionInfo":Landroid/content/pm/PermissionInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    return-object v3

    .line 325
    .end local v2    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_1
    move-exception v1

    .line 328
    .local v1, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    return-object v4
.end method

.method private getLocationPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 303
    const-string/jumbo v2, "android.permission-group.LOCATION"

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    .line 302
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 304
    .local v0, "groupPermInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v0, :cond_1

    .line 305
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 306
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 305
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "k":I
    :cond_1
    return-object v4
.end method

.method private updateLocationPermissionState(I)V
    .locals 7
    .param p1, "selectedState"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 266
    if-nez p1, :cond_3

    .line 267
    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-nez v3, :cond_0

    .line 268
    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    .line 269
    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    .line 271
    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    .line 286
    :cond_1
    :goto_0
    if-eq p1, v6, :cond_2

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v3, "enable"

    iget-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 292
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0xb

    iput v3, v2, Landroid/os/Message;->what:I

    .line 293
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    .line 296
    const-string/jumbo v4, "location"

    .line 295
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 297
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 259
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 272
    :cond_3
    if-ne p1, v4, :cond_5

    .line 273
    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-nez v3, :cond_4

    .line 274
    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    .line 275
    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    .line 277
    :cond_4
    iput-boolean v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    goto :goto_0

    .line 278
    :cond_5
    if-ne p1, v6, :cond_1

    .line 279
    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-eqz v3, :cond_6

    .line 280
    iput-boolean v5, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    .line 281
    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    .line 283
    :cond_6
    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public addItems([Ljava/lang/String;)V
    .locals 3
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 171
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 333
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 334
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v2, p1

    .line 338
    check-cast v2, Landroid/view/ViewGroup;

    .line 339
    .local v2, "vg":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 340
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 341
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 342
    const/16 v3, 0x30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 343
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a058e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 344
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 347
    .local v1, "spinnerStartMargin":I
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    .line 332
    return-void
.end method

.method public setGrantedState(Z)V
    .locals 0
    .param p1, "granted"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    .line 188
    return-void
.end method

.method public setIsRuntimePermission(Z)V
    .locals 0
    .param p1, "isRuntimePermission"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mIsRuntimePermission:Z

    .line 130
    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 134
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "doCall"    # Z

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 141
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 142
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    if-eqz v2, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updateLocationPermissionState(I)V

    .line 146
    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    .line 149
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 150
    .local v0, "disableDependents":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->notifyDependencyChange(Z)V

    .line 138
    return-void
.end method

.method public updatePermissionState(Z)V
    .locals 24
    .param p1, "grant"    # Z

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 198
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 199
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    .line 201
    .local v20, "uid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    .line 202
    const/16 v5, 0x1000

    .line 201
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 203
    .local v18, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_2

    .line 204
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v21, v4

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v3, v22, v21

    .line 205
    .local v3, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->getLocationPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 206
    .local v19, "requstPermissionPackageName":Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mIsRuntimePermission:Z

    if-eqz v4, :cond_3

    .line 208
    if-eqz p1, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v7}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    .line 211
    const/4 v5, 0x3

    .line 213
    const/4 v6, 0x0

    .line 210
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 204
    :cond_0
    :goto_1
    add-int/lit8 v4, v21, 0x1

    move/from16 v21, v4

    goto :goto_0

    .line 215
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v7}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    .line 217
    const/16 v5, 0x8

    .line 218
    const/16 v6, 0x8

    .line 216
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_1

    .line 254
    .end local v3    # "permission":Ljava/lang/String;
    .end local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "requstPermissionPackageName":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 196
    :cond_2
    return-void

    .line 222
    .restart local v3    # "permission":Ljava/lang/String;
    .restart local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "requstPermissionPackageName":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 223
    .local v12, "flags":I
    const/16 v17, 0x0

    .line 225
    .local v17, "modePermission":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    .line 226
    const-class v5, Landroid/app/AppOpsManager;

    .line 225
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager;

    .line 228
    .local v15, "appOpsManager":Landroid/app/AppOpsManager;
    const-string/jumbo v4, "android"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 231
    :goto_2
    if-eqz p1, :cond_6

    .line 232
    if-eqz v14, :cond_4

    .line 233
    const/16 v17, 0x0

    .line 241
    :cond_4
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v15, v14, v0, v1}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 243
    const/16 v11, 0x8

    .line 245
    .local v11, "mask":I
    if-eqz v11, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 248
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v9, v3

    .line 247
    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "mask":I
    :cond_5
    const/4 v14, 0x0

    .local v14, "appOp":Ljava/lang/String;
    goto :goto_2

    .line 236
    .end local v14    # "appOp":Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_4

    .line 237
    const/16 v17, 0x1

    .line 238
    const/16 v12, 0x8

    goto :goto_3
.end method
