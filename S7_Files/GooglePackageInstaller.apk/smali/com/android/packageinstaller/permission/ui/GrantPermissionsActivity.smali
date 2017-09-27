.class public Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;
.super Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;
.source "GrantPermissionsActivity.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;
    }
.end annotation


# instance fields
.field private mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

.field private mGrantResults:[I

.field private mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedPermissions:[Ljava/lang/String;

.field mResultSet:Z

.field private mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;


# direct methods
.method static synthetic -wrap0(Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResultAndFinish()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;

    .line 55
    return-void
.end method

.method private computePermissionGrantState(Landroid/content/pm/PackageInfo;Ljava/lang/String;I)I
    .locals 8
    .param p1, "callingPackageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "permissionPolicy"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 311
    const/4 v3, 0x0

    .line 313
    .local v3, "permissionRequested":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 314
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    const/4 v3, 0x1

    .line 316
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v1

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 318
    return v7

    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_1
    if-nez v3, :cond_2

    .line 325
    return v6

    .line 329
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 330
    .local v2, "pInfo":Landroid/content/pm/PermissionInfo;
    iget v4, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0xf

    .line 331
    const/4 v5, 0x1

    .line 330
    if-eq v4, v5, :cond_3

    .line 332
    return v6

    .line 334
    .end local v2    # "pInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v6

    .line 338
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_3
    packed-switch p3, :pswitch_data_0

    .line 343
    return v6

    .line 340
    :pswitch_0
    return v7

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getCallingPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 351
    const/16 v3, 0x1000

    .line 350
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "GrantPermissionsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/4 v1, 0x0

    return-object v1
.end method

.method private logRequestedPermissionGroups()V
    .locals 5

    .prologue
    .line 385
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    .line 390
    .local v0, "groupCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .local v3, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/AppPermissionGroup;>;"
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "groupState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;

    .line 392
    .local v1, "groupState":Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;
    iget-object v4, v1, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    .end local v1    # "groupState":Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;
    :cond_1
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/packageinstaller/permission/utils/SafetyNetLogger;->logPermissionsRequested(Landroid/content/pm/PackageInfo;Ljava/util/List;)V

    .line 384
    return-void
.end method

.method private setResultAndFinish()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResultIfNeeded(I)V

    .line 381
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->finish()V

    .line 379
    return-void
.end method

.method private setResultIfNeeded(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 369
    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mResultSet:Z

    if-nez v1, :cond_0

    .line 370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mResultSet:Z

    .line 371
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->logRequestedPermissionGroups()V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string/jumbo v1, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mGrantResults:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, p1, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 368
    .end local v0    # "result":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showNextPermissionGroupGrantRequest()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 229
    .local v2, "groupCount":I
    const/4 v3, 0x0

    .line 230
    .local v3, "currentIndex":I
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "groupState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;

    .line 231
    .local v9, "groupState":Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;
    iget v0, v9, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mState:I

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v7

    .line 233
    .local v7, "appLabel":Ljava/lang/CharSequence;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 234
    aput-object v7, v0, v4

    iget-object v1, v9, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v13

    .line 233
    const v1, 0x7f0d017c

    invoke-virtual {p0, v1, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    .line 236
    .local v5, "message":Landroid/text/Spanned;
    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 243
    iget-object v1, v9, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconPkg()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 248
    .local v12, "resources":Landroid/content/res/Resources;
    :goto_1
    iget-object v0, v9, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconResId()I

    move-result v11

    .line 250
    .local v11, "icon":I
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    iget-object v1, v9, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v12, v11}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 252
    iget-object v6, v9, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v6}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isUserSet()Z

    move-result v6

    .line 250
    invoke-interface/range {v0 .. v6}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;->updateUi(Ljava/lang/String;IILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V

    .line 253
    return v13

    .line 244
    .end local v11    # "icon":I
    .end local v12    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v8

    .line 246
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .restart local v12    # "resources":Landroid/content/res/Resources;
    goto :goto_1

    .line 256
    .end local v5    # "message":Landroid/text/Spanned;
    .end local v7    # "appLabel":Ljava/lang/CharSequence;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v9    # "groupState":Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;
    :cond_1
    return v4
.end method

.method private updateDefaultResults(Landroid/content/pm/PackageInfo;I)V
    .locals 5
    .param p1, "callingPackageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "permissionPolicy"    # I

    .prologue
    .line 359
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    array-length v2, v3

    .line 360
    .local v2, "requestedPermCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 361
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 362
    .local v1, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mGrantResults:[I

    if-eqz p1, :cond_0

    .line 363
    invoke-direct {p0, p1, v1, p2}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->computePermissionGrantState(Landroid/content/pm/PackageInfo;Ljava/lang/String;I)I

    move-result v3

    .line 362
    :goto_1
    aput v3, v4, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    const/4 v3, -0x1

    goto :goto_1

    .line 358
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateGrantResults(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V
    .locals 6
    .param p1, "group"    # Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .prologue
    const/4 v4, 0x0

    .line 281
    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/Permission;

    .line 283
    .local v1, "permission":Lcom/android/packageinstaller/permission/model/Permission;
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-static {v3, v5}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 284
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 285
    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mGrantResults:[I

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/Permission;->isGranted()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    aput v3, v5, v0

    goto :goto_0

    .line 286
    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    .line 280
    .end local v0    # "index":I
    .end local v1    # "permission":Lcom/android/packageinstaller/permission/model/Permission;
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 211
    :cond_0
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResultIfNeeded(I)V

    .line 306
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->finish()V

    .line 304
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    instance-of v1, v1, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    check-cast v1, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->onConfigurationChanged()V

    .line 190
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super/range {p0 .. p1}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setFinishOnTouchOutside(Z)V

    .line 75
    const v1, 0x7f0d0193

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setTitle(I)V

    .line 77
    invoke-static/range {p0 .. p0}, Lcom/android/packageinstaller/DeviceUtils;->isTelevision(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->setResultListener(Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;)Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    .line 87
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    array-length v13, v1

    .line 94
    .local v13, "requestedPermCount":I
    new-array v1, v13, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mGrantResults:[I

    .line 96
    if-nez v13, :cond_3

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResultAndFinish()V

    .line 98
    return-void

    .line 80
    .end local v13    # "requestedPermCount":I
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/packageinstaller/DeviceUtils;->isWear(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    new-instance v1, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->setResultListener(Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;)Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    goto :goto_0

    .line 83
    :cond_2
    new-instance v1, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->setResultListener(Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;)Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    goto :goto_0

    .line 101
    .restart local v13    # "requestedPermCount":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getCallingPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 103
    .local v3, "callingPackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_4

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_5

    .line 105
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResultAndFinish()V

    .line 106
    return-void

    .line 104
    :cond_5
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 110
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_6

    .line 112
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    .line 113
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mGrantResults:[I

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResultAndFinish()V

    .line 115
    return-void

    .line 118
    :cond_6
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 119
    .local v7, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/app/admin/DevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v12

    .line 122
    .local v12, "permissionPolicy":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->updateDefaultResults(Landroid/content/pm/PackageInfo;I)V

    .line 124
    new-instance v1, Lcom/android/packageinstaller/permission/model/AppPermissions;

    .line 125
    new-instance v6, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$1;-><init>(Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;)V

    .line 124
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestedPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_f

    aget-object v14, v2, v1

    .line 133
    .local v14, "requestedPermission":Ljava/lang/String;
    const/4 v8, 0x0

    .line 134
    .local v8, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "nextGroup$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 135
    .local v10, "nextGroup":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    invoke-virtual {v10, v14}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 136
    move-object v8, v10

    .line 140
    .end local v8    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v10    # "nextGroup":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_8
    if-nez v8, :cond_9

    .line 132
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_9
    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isUserFixed()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isPolicyFixed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 173
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->updateGrantResults(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    goto :goto_2

    .line 146
    :cond_b
    packed-switch v12, :pswitch_data_0

    .line 162
    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v5

    if-nez v5, :cond_e

    .line 163
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v6

    .line 164
    new-instance v16, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;-><init>(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    .line 163
    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 148
    :pswitch_0
    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v5

    if-nez v5, :cond_c

    .line 149
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    .line 151
    :cond_c
    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->setPolicyFixed()V

    goto :goto_2

    .line 155
    :pswitch_1
    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 156
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    .line 158
    :cond_d
    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->setPolicyFixed()V

    goto :goto_2

    .line 166
    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    .line 167
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->updateGrantResults(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    goto :goto_2

    .line 177
    .end local v11    # "nextGroup$iterator":Ljava/util/Iterator;
    .end local v14    # "requestedPermission":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    invoke-interface {v1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;->createView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setContentView(Landroid/view/View;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 180
    .local v15, "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 181
    .local v9, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    invoke-interface {v1, v9}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 182
    invoke-virtual {v15, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->showNextPermissionGroupGrantRequest()Z

    move-result v1

    if-nez v1, :cond_10

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResultAndFinish()V

    .line 71
    :cond_10
    return-void

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 294
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 300
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPermissionGrantResult(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .param p3, "doNotAskAgain"    # Z

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mRequestGrantPermissionGroups:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;

    .line 265
    .local v0, "groupState":Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;
    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    if-eqz v1, :cond_0

    .line 266
    if-eqz p2, :cond_2

    .line 267
    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v1, p3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    .line 268
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mState:I

    .line 273
    :goto_0
    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->updateGrantResults(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->showNextPermissionGroupGrantRequest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->setResultAndFinish()V

    .line 263
    :cond_1
    return-void

    .line 270
    :cond_2
    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v1, p3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    .line 271
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mState:I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 223
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    invoke-interface {v0, p1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;->loadInstanceState(Landroid/os/Bundle;)V

    .line 221
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->mViewHandler:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;

    invoke-interface {v0, p1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;->saveInstanceState(Landroid/os/Bundle;)V

    .line 215
    return-void
.end method
