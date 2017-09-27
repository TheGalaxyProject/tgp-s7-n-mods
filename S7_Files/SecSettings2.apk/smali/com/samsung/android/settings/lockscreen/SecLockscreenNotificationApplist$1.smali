.class final Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;
.super Ljava/lang/Object;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;->sCollator:Ljava/text/Collator;

    .line 398
    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;)I
    .locals 3
    .param p1, "lhs"    # Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;
    .param p2, "rhs"    # Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 401
    check-cast p1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;->compare(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;)I

    move-result v0

    return v0
.end method
