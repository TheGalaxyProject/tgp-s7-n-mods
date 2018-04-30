.class final Lcom/android/packageinstaller/TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "TabsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;

.field private final view:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/TabsAdapter$TabInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter$TabInfo;->view:Landroid/view/View;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/TabsAdapter$TabInfo;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/packageinstaller/TabsAdapter$TabInfo;->view:Landroid/view/View;

    return-void
.end method
