.class public Lcom/samsung/android/settings/display/AppListView;
.super Landroid/widget/ListView;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/AppListView$ActivityEntry;,
        Lcom/samsung/android/settings/display/AppListView$AppsAdapter;
    }
.end annotation


# static fields
.field private static mFontScale:F

.field private static mFontSize:I

.field private static mFontStyle:Landroid/graphics/Typeface;

.field private static mPackageName:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()F
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/AppListView;->mFontScale:F

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/AppListView;->mFontSize:I

    return v0
.end method

.method static synthetic -get2()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/AppListView;->mFontStyle:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/AppListView;->mPackageName:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 55
    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->getClockPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 56
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "com.samsung.android.email.provider"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 53
    sput-object v0, Lcom/samsung/android/settings/display/AppListView;->mPackageName:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/AppListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/AppListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/AppListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleResId"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    new-instance v0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;

    const v1, 0x7f04016b

    .line 81
    const v2, 0x1020014

    const v3, 0x1020007

    .line 80
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/AppListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method

.method public static getClockPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 171
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    .line 172
    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string/jumbo v4, "com.sec.android.app.clockpackage"

    .line 171
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 174
    const-string/jumbo v3, "CscFeature_Clock_ConfigReplacePackage"

    .line 173
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "packageNameCSC":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    return-object v1

    .line 179
    :cond_0
    return-object v0
.end method


# virtual methods
.method public setTextScale(IF)V
    .locals 0
    .param p1, "font_size"    # I
    .param p2, "font_scale"    # F

    .prologue
    .line 84
    sput p1, Lcom/samsung/android/settings/display/AppListView;->mFontSize:I

    .line 85
    sput p2, Lcom/samsung/android/settings/display/AppListView;->mFontScale:F

    .line 83
    return-void
.end method

.method public setTextStyle(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "font_style"    # Landroid/graphics/Typeface;

    .prologue
    .line 89
    sput-object p1, Lcom/samsung/android/settings/display/AppListView;->mFontStyle:Landroid/graphics/Typeface;

    .line 88
    return-void
.end method
