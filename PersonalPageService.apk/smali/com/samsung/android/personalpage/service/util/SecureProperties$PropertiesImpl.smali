.class abstract Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;
.super Ljava/lang/Object;
.source "SecureProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/util/SecureProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PropertiesImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method
