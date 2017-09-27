.class public Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
.super Ljava/lang/Object;
.source "AppShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppListItem"
.end annotation


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsActive:Z

.field public mIsChecked:Z

.field public mLabel:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "activityname"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "checked"    # Z
    .param p6, "Active"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mPackageName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mActivityName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-boolean p5, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsChecked:Z

    .line 38
    iput-boolean p6, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsActive:Z

    .line 32
    return-void
.end method
