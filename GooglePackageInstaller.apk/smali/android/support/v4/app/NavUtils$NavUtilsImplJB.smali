.class Landroid/support/v4/app/NavUtils$NavUtilsImplJB;
.super Landroid/support/v4/app/NavUtils$NavUtilsImplBase;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavUtilsImplJB"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/support/v4/app/NavUtilsJB;->getParentActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;->getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
