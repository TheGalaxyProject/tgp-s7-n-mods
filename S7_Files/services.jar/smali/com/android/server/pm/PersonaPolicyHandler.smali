.class public Lcom/android/server/pm/PersonaPolicyHandler;
.super Landroid/content/pm/IPersonaPolicyHandler$Stub;
.source "PersonaPolicyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxPolicyHandler"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/pm/IPersonaPolicyHandler$Stub;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private getScaledImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 237
    .local v3, "imageWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 239
    .local v4, "imageHeight":I
    const/high16 v0, 0x41b00000    # 22.0f

    mul-float/2addr v0, p2

    div-float/2addr v0, v6

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 240
    .local v8, "scaleX":F
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, p3

    div-float/2addr v0, v6

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 242
    .local v9, "scaleY":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 243
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 244
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 246
    .local v7, "b":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-static {v13}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v8

    .line 166
    .local v8, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/4 v4, 0x0

    .line 167
    .local v4, "inputStreamLock":Ljava/io/InputStream;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 168
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "path":Ljava/lang/String;
    const-string/jumbo v13, "KnoxPolicyHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "badge icon path : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v4    # "inputStreamLock":Ljava/io/InputStream;
    new-instance v13, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .end local v7    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 199
    .local v5, "lock":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v14}, Lcom/android/server/pm/PersonaPolicyHandler;->getScaledImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 201
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 202
    .local v2, "copyIcon":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int v11, v13, v14

    .line 204
    .local v11, "x":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int v12, v13, v14

    .line 205
    .local v12, "y":I
    int-to-float v13, v11

    int-to-float v14, v12

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 207
    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 210
    :cond_1
    return-object v2

    .line 173
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "copyIcon":Landroid/graphics/Bitmap;
    .end local v5    # "lock":Landroid/graphics/Bitmap;
    .end local v11    # "x":I
    .end local v12    # "y":I
    .restart local v4    # "inputStreamLock":Ljava/io/InputStream;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "persona"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    .line 175
    .local v6, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v6, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "user"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 178
    .local v10, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 179
    .local v9, "ui":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_3

    .line 180
    const-string/jumbo v13, "KNOX"

    iget-object v14, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 181
    const-string/jumbo v13, "KnoxPolicyHandler"

    const-string/jumbo v14, "selecting the lock badge for KNOX container"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string/jumbo v14, "security_home_icon_badge_KNOX.png"

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 193
    .end local v4    # "inputStreamLock":Ljava/io/InputStream;
    .end local v9    # "ui":Landroid/content/pm/UserInfo;
    .end local v10    # "um":Landroid/os/UserManager;
    :cond_3
    :goto_1
    if-nez v4, :cond_0

    .line 194
    const-string/jumbo v13, "KnoxPolicyHandler"

    const-string/jumbo v14, "this should have never happened. No lock image is added!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 222
    .end local v6    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v8    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "KnoxPolicyHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error in writeLockOnImage"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    return-object p1

    .line 183
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "inputStreamLock":Ljava/io/InputStream;
    .restart local v6    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v8    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v9    # "ui":Landroid/content/pm/UserInfo;
    .restart local v10    # "um":Landroid/os/UserManager;
    :cond_4
    :try_start_1
    const-string/jumbo v13, "KNOX II"

    iget-object v14, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 184
    const-string/jumbo v13, "KnoxPolicyHandler"

    const-string/jumbo v14, "selecting the lock badge for KNOX II container"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string/jumbo v14, "security_home_icon_badge_KNOX_II.png"

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .local v4, "inputStreamLock":Ljava/io/InputStream;
    goto :goto_1

    .line 189
    .end local v9    # "ui":Landroid/content/pm/UserInfo;
    .end local v10    # "um":Landroid/os/UserManager;
    .local v4, "inputStreamLock":Ljava/io/InputStream;
    :cond_5
    const-string/jumbo v13, "KnoxPolicyHandler"

    const-string/jumbo v14, "SemPersonaManager is null!!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public allowChangePolicy(Ljava/lang/String;)Z
    .locals 3
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 43
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "allowChangePolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string/jumbo v0, "passwordLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "PASSWORD_LOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v2

    .line 50
    :cond_0
    const-string/jumbo v0, "encryption"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "ENCRYPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v2

    .line 55
    :cond_1
    const-string/jumbo v0, "secureKeystore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "SECURE_KEYSTORE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v2

    .line 60
    :cond_2
    const-string/jumbo v0, "cameraMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "CAMERA_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v2

    .line 65
    :cond_3
    const-string/jumbo v0, "customBadgeIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "CUSTOM_BADGEICON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v2

    .line 70
    :cond_4
    const-string/jumbo v0, "disableSwitchWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "DISABLE_SWITCHWIDGET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v2

    .line 75
    :cond_5
    const-string/jumbo v0, "customPersonaIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "CUSTOM_PERSONAICON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v2

    .line 80
    :cond_6
    const-string/jumbo v0, "customColorIdentification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "CUSTOM_COLORIDENTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v2

    .line 85
    :cond_7
    const-string/jumbo v0, "containerReset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "CONTAINER_RESET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v2

    .line 90
    :cond_8
    const-string/jumbo v0, "shortcutCreation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "SHORTCUT_CREATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v2

    .line 95
    :cond_9
    const-string/jumbo v0, "dlnaDataTransfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 97
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "DLNA_DATATRANSFER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v2

    .line 100
    :cond_a
    const-string/jumbo v0, "print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "PRINT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v2

    .line 105
    :cond_b
    const-string/jumbo v0, "modifyTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 107
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "MODIFY_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v2

    .line 110
    :cond_c
    const-string/jumbo v0, "allShare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 112
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "ALLSHARE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v2

    .line 115
    :cond_d
    const-string/jumbo v0, "gearSupport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 117
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "GEAR_SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v2

    .line 120
    :cond_e
    const-string/jumbo v0, "penWindow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 122
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "PENWINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v2

    .line 125
    :cond_f
    const-string/jumbo v0, "airCommand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 127
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "AIRCOMMAND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v2

    .line 130
    :cond_10
    const-string/jumbo v0, "universalCallerId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 132
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "UNIVERSAL_CALLER_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v2

    .line 135
    :cond_11
    const-string/jumbo v0, "importFiles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 137
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "IMPORT_FILES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v2

    .line 140
    :cond_12
    const-string/jumbo v0, "exportFiles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 142
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "EXPORT_FILES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v2

    .line 145
    :cond_13
    const-string/jumbo v0, "exportAndDeleteFiles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 147
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "EXPORT_AND_DELETE_FILES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v2

    .line 150
    :cond_14
    const-string/jumbo v0, "switchNotif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 152
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "SWITCH_NOTIF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v2

    .line 157
    :cond_15
    const-string/jumbo v0, "KnoxPolicyHandler"

    const-string/jumbo v1, "Default value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v2
.end method
