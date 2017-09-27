.class public Lcom/android/setupwizardlib/items/ItemInflater;
.super Lcom/android/setupwizardlib/items/GenericInflater;
.source "ItemInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/setupwizardlib/items/GenericInflater",
        "<",
        "Lcom/android/setupwizardlib/items/ItemHierarchy;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/GenericInflater;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ItemInflater;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/setupwizardlib/items/Item;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/items/ItemInflater;->setDefaultPackage(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected onAddChildItem(Lcom/android/setupwizardlib/items/ItemHierarchy;Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 3
    .param p1, "parent"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "child"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .prologue
    .line 58
    instance-of v0, p1, Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;

    .end local p1    # "parent":Lcom/android/setupwizardlib/items/ItemHierarchy;
    invoke-interface {p1, p2}, Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;->addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 57
    return-void

    .line 61
    .restart local p1    # "parent":Lcom/android/setupwizardlib/items/ItemHierarchy;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot add child item to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic onAddChildItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "child"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .end local p1    # "parent":Ljava/lang/Object;
    check-cast p2, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .end local p2    # "child":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/ItemInflater;->onAddChildItem(Lcom/android/setupwizardlib/items/ItemHierarchy;Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    return-void
.end method
