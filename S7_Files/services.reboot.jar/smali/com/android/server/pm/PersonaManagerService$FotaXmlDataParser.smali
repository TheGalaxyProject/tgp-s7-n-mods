.class public Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FotaXmlDataParser"
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SYSTEM:Ljava/lang/String; = "system"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "FotaXmlDataParser"


# instance fields
.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 4147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    .line 4148
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 4149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    .line 4147
    return-void
.end method


# virtual methods
.method public getAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromXml()V
    .locals 10

    .prologue
    .line 4158
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 4159
    .local v1, "event":I
    const/4 v3, 0x0

    .line 4161
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_2

    .line 4162
    packed-switch v1, :pswitch_data_0

    .line 4188
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 4164
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4165
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4166
    const-string/jumbo v7, "PersonaManagerService"

    const-string/jumbo v8, "New row found "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4168
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v8, "system"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4169
    .local v6, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4170
    .local v4, "system":Z
    if-eqz v6, :cond_1

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4171
    const/4 v4, 0x1

    .line 4174
    :cond_1
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    invoke-direct {v3, v2, v4}, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;-><init>(Ljava/lang/String;Z)V

    .local v3, "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    goto :goto_1

    .line 4179
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    .end local v4    # "system":Z
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4180
    .restart local v5    # "tag":Ljava/lang/String;
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 4181
    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->dumpState()V

    .line 4182
    const-string/jumbo v7, "PersonaManagerService"

    const-string/jumbo v8, "ROW added to list"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4190
    .end local v1    # "event":I
    .end local v5    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4191
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromXml EX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 4162
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
