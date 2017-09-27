.class Lcom/android/settings/DevelopmentSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 2595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2596
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 2597
    iput-object p2, p0, Lcom/android/settings/DevelopmentSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 2595
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 2603
    if-eqz p1, :cond_0

    .line 2604
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2605
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 2602
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    return-void
.end method
