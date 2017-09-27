.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;->sCollator:Ljava/text/Collator;

    .line 341
    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)I
    .locals 3
    .param p1, "a"    # Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    .param p2, "b"    # Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .prologue
    .line 347
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 348
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 350
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 351
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    iget-object v2, p2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 344
    check-cast p1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;->compare(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)I

    move-result v0

    return v0
.end method
