.class public Lmf/org/apache/xerces/xni/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public localpart:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public rawname:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/QName;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 82
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/xni/QName;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    instance-of v0, p1, Lmf/org/apache/xerces/xni/QName;

    if-nez v0, :cond_1

    .line 158
    :cond_0
    return v2

    .line 149
    :cond_1
    check-cast p1, Lmf/org/apache/xerces/xni/QName;

    .line 150
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v1, :cond_5

    return v2

    .line 151
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v0, v1, :cond_4

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    return v3

    .line 154
    :cond_5
    return v3
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_0
    return v0

    .line 140
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 141
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 140
    :goto_1
    add-int/2addr v0, v1

    return v0

    .line 141
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 143
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/xni/QName;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x2c

    const/4 v1, 0x1

    const/16 v4, 0x22

    const/4 v0, 0x0

    .line 164
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 170
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 177
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 184
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 190
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "prefix=\""

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    if-nez v0, :cond_2

    :goto_4
    const-string/jumbo v0, "localpart=\""

    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 175
    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 178
    :cond_3
    if-nez v0, :cond_4

    :goto_5
    const-string/jumbo v0, "rawname=\""

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 182
    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 185
    :cond_5
    if-nez v0, :cond_6

    :goto_6
    const-string/jumbo v0, "uri=\""

    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 186
    :cond_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6
.end method
