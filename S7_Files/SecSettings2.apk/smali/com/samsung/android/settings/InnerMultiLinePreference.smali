.class Lcom/samsung/android/settings/InnerMultiLinePreference;
.super Landroid/preference/Preference;
.source "KnoxChooseLockTwoFactor.java"


# static fields
.field private static mKnoxName:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/InnerMultiLinePreference;->mKnoxName:Ljava/lang/String;

    .line 1033
    return-void
.end method

.method public static setKnoxName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1039
    sput-object p0, Lcom/samsung/android/settings/InnerMultiLinePreference;->mKnoxName:Ljava/lang/String;

    .line 1038
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0b0799

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1059
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 1061
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1062
    .local v1, "textView":Landroid/widget/TextView;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    .line 1064
    .local v0, "isKnoxVersion270Supported":Z
    if-eqz v1, :cond_0

    .line 1065
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1066
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1067
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    sget-object v2, Lcom/samsung/android/settings/InnerMultiLinePreference;->mKnoxName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1069
    iget-object v2, p0, Lcom/samsung/android/settings/InnerMultiLinePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/settings/InnerMultiLinePreference;->mKnoxName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/InnerMultiLinePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/InnerMultiLinePreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
