.class public final Lcom/android/server/pm/Policy$PolicyBuilder;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyBuilder"
.end annotation


# instance fields
.field private mAllowCategory:Ljava/lang/String;

.field private mBBCAllowCategory:Ljava/lang/String;

.field private mBBCCategory:I

.field private mCategory:I

.field private final mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mIsContainerApp:Z

.field private final mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeinfo:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mAllowCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mBBCAllowCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/Policy$PolicyBuilder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mBBCCategory:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/Policy$PolicyBuilder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCategory:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 2722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2723
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    .line 2724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    .line 2726
    iput v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCategory:I

    .line 2727
    iput v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mBBCCategory:I

    .line 2728
    iput-object v3, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mAllowCategory:Ljava/lang/String;

    .line 2729
    iput-object v3, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mBBCAllowCategory:Ljava/lang/String;

    .line 2730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mIsContainerApp:Z

    .line 2722
    return-void
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2896
    if-nez p1, :cond_0

    .line 2897
    return v1

    .line 2900
    :cond_0
    const-string/jumbo v0, "\\A[\\.\\w]+\\z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2901
    return v1

    .line 2904
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 2869
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2871
    .local v0, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2873
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid seinfo value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2875
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2878
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2879
    .local v1, "pkgValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2884
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2885
    return-object p0

    .line 2880
    :cond_3
    const-string/jumbo v0, "Conflicting seinfo value found"

    .line 2881
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "cert"    # Ljava/lang/String;

    .prologue
    .line 2746
    if-nez p1, :cond_0

    .line 2747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid signature value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2748
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2750
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    new-instance v2, Landroid/content/pm/Signature;

    invoke-direct {v2, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2751
    return-object p0
.end method

.method public build()Lcom/android/server/pm/Policy;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2923
    new-instance v1, Lcom/android/server/pm/Policy;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy;)V

    .line 2925
    .local v1, "p":Lcom/android/server/pm/Policy;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get0(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2926
    const-string/jumbo v0, "Missing certs with signer tag. Expecting at least one."

    .line 2927
    .local v0, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2929
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get2(Lcom/android/server/pm/Policy;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get1(Lcom/android/server/pm/Policy;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 2930
    const-string/jumbo v0, "Only seinfo tag XOR package tags are allowed within a signer stanza."

    .line 2932
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2929
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2935
    :cond_2
    return-object v1
.end method

.method public setAllowCategory(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 1
    .param p1, "allowCategory"    # Ljava/lang/String;

    .prologue
    .line 2799
    if-eqz p1, :cond_0

    .line 2800
    iput-object p1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mAllowCategory:Ljava/lang/String;

    .line 2807
    :goto_0
    return-object p0

    .line 2802
    :cond_0
    const-string/jumbo v0, "0,701-1023"

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mAllowCategory:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBBCAllowCategory(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 1
    .param p1, "BBCAllowCategory"    # Ljava/lang/String;

    .prologue
    .line 2828
    if-eqz p1, :cond_0

    .line 2829
    iput-object p1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mBBCAllowCategory:Ljava/lang/String;

    .line 2836
    :goto_0
    return-object p0

    .line 2831
    :cond_0
    const-string/jumbo v0, "0,701-1023"

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mBBCAllowCategory:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBBCCategoryOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "BBCcategory"    # Ljava/lang/String;

    .prologue
    .line 2811
    if-eqz p1, :cond_0

    .line 2813
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mBBCCategory:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    :goto_0
    return-object p0

    .line 2814
    :catch_0
    move-exception v0

    .line 2815
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "SELinuxMMAC"

    const-string/jumbo v2, " Category value is incorrect"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2819
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/16 v1, 0x3ff

    iput v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mBBCCategory:I

    goto :goto_0
.end method

.method public setCategoryOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 2782
    if-eqz p1, :cond_0

    .line 2784
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCategory:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2795
    :goto_0
    return-object p0

    .line 2785
    :catch_0
    move-exception v0

    .line 2786
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "SELinuxMMAC"

    const-string/jumbo v2, " Category value is incorrect"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2790
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/16 v1, 0x3ff

    iput v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCategory:I

    goto :goto_0
.end method

.method public setContainerFlag(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 2841
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mIsContainerApp:Z

    .line 2849
    :goto_0
    return-object p0

    .line 2844
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mIsContainerApp:Z

    goto :goto_0
.end method

.method public setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 2766
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid seinfo value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2768
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2771
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2776
    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    .line 2777
    return-object p0

    .line 2772
    :cond_2
    const-string/jumbo v0, "Duplicate seinfo tag found"

    .line 2773
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
