.class Lcom/samsung/android/settings/notification/BlockNotificationList$SummaryProvider;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;
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
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$SummaryProvider;->mContext:Landroid/content/Context;

    .line 713
    iput-object p2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 711
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 718
    if-eqz p1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f0b047b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 717
    :cond_0
    return-void
.end method
