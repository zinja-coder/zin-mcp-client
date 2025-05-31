.class public Lcom/badlogic/gdx/utils/UBJsonReader;
.super Ljava/lang/Object;
.source "UBJsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# instance fields
.field public oldFormat:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    return-void
.end method


# virtual methods
.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 54
    const/16 v1, 0x2000

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/files/FileHandle;->read(I)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/16 v0, 0x5b

    if-ne p2, v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseArray(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const/16 v0, 0x7b

    if-ne p2, v0, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseObject(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x5a

    if-ne p2, v0, :cond_2

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    goto :goto_0

    .line 75
    :cond_2
    const/16 v0, 0x54

    if-ne p2, v0, :cond_3

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    goto :goto_0

    .line 77
    :cond_3
    const/16 v0, 0x46

    if-ne p2, v0, :cond_4

    .line 78
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    goto :goto_0

    .line 79
    :cond_4
    const/16 v0, 0x42

    if-ne p2, v0, :cond_5

    .line 80
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    goto :goto_0

    .line 81
    :cond_5
    const/16 v0, 0x55

    if-ne p2, v0, :cond_6

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    goto :goto_0

    .line 83
    :cond_6
    const/16 v0, 0x69

    if-ne p2, v0, :cond_8

    .line 84
    new-instance v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-long v0, v0

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    move-object v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 85
    :cond_8
    const/16 v0, 0x49

    if-ne p2, v0, :cond_a

    .line 86
    new-instance v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    :goto_2
    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    move-object v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-long v0, v0

    goto :goto_2

    .line 87
    :cond_a
    const/16 v0, 0x6c

    if-ne p2, v0, :cond_b

    .line 88
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    goto/16 :goto_0

    .line 89
    :cond_b
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_c

    .line 90
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    goto/16 :goto_0

    .line 91
    :cond_c
    const/16 v0, 0x64

    if-ne p2, v0, :cond_d

    .line 92
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    float-to-double v2, v1

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(D)V

    goto/16 :goto_0

    .line 93
    :cond_d
    const/16 v0, 0x44

    if-ne p2, v0, :cond_e

    .line 94
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(D)V

    goto/16 :goto_0

    .line 95
    :cond_e
    const/16 v0, 0x73

    if-eq p2, v0, :cond_f

    const/16 v0, 0x53

    if-ne p2, v0, :cond_10

    .line 96
    :cond_f
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_10
    const/16 v0, 0x61

    if-eq p2, v0, :cond_11

    const/16 v0, 0x41

    if-ne p2, v0, :cond_12

    .line 98
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseData(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    goto/16 :goto_0

    .line 100
    :cond_12
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unrecognized data type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "din":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v0    # "din":Ljava/io/DataInputStream;
    .local v1, "din":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 47
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    .line 44
    .end local v1    # "din":Ljava/io/DataInputStream;
    .restart local v0    # "din":Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    .line 45
    .local v2, "ex":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "din":Ljava/io/DataInputStream;
    .restart local v1    # "din":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "din":Ljava/io/DataInputStream;
    .restart local v0    # "din":Ljava/io/DataInputStream;
    goto :goto_1

    .line 44
    .end local v0    # "din":Ljava/io/DataInputStream;
    .restart local v1    # "din":Ljava/io/DataInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "din":Ljava/io/DataInputStream;
    .restart local v0    # "din":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method protected parseArray(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 14
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 104
    new-instance v3, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v9, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v3, v9}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 105
    .local v3, "result":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 106
    .local v6, "type":B
    const/4 v8, 0x0

    .line 107
    .local v8, "valueType":B
    const/16 v9, 0x24

    if-ne v6, v9, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 109
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 111
    :cond_0
    const-wide/16 v4, -0x1

    .line 112
    .local v4, "size":J
    const/16 v9, 0x23

    if-ne v6, v9, :cond_4

    .line 113
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v4

    .line 114
    cmp-long v9, v4, v12

    if-gez v9, :cond_1

    new-instance v9, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v10, "Unrecognized data type"

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 115
    :cond_1
    cmp-long v9, v4, v12

    if-nez v9, :cond_3

    .line 134
    :cond_2
    return-object v3

    .line 116
    :cond_3
    if-nez v8, :cond_6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 118
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 119
    .local v2, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v0, 0x0

    .line 120
    .local v0, "c":J
    :goto_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v9

    if-lez v9, :cond_2

    const/16 v9, 0x5d

    if-eq v6, v9, :cond_2

    .line 121
    invoke-virtual {p0, p1, v6}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    .line 122
    .local v7, "val":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v2, :cond_7

    .line 123
    iput-object v2, v7, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 124
    iput-object v7, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 125
    iget v9, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 130
    :goto_2
    move-object v2, v7

    .line 131
    cmp-long v9, v4, v12

    if-lez v9, :cond_5

    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    cmp-long v9, v0, v4

    if-gez v9, :cond_2

    .line 132
    :cond_5
    if-nez v8, :cond_8

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 133
    :goto_3
    goto :goto_1

    .end local v0    # "c":J
    .end local v2    # "prev":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v7    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_6
    move v6, v8

    .line 116
    goto :goto_0

    .line 127
    .restart local v0    # "c":J
    .restart local v2    # "prev":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v7    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_7
    iput-object v7, v3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 128
    const/4 v9, 0x1

    iput v9, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_2

    :cond_8
    move v6, v8

    .line 132
    goto :goto_3
.end method

.method protected parseData(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 10
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "blockType"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 177
    .local v0, "dataType":B
    const/16 v8, 0x41

    if-ne p2, v8, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUInt(Ljava/io/DataInputStream;)J

    move-result-wide v6

    .line 178
    .local v6, "size":J
    :goto_0
    new-instance v4, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v8, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v4, v8}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 179
    .local v4, "result":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v1, 0x0

    .line 180
    .local v1, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_1
    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .line 182
    .local v5, "val":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v1, :cond_1

    .line 183
    iput-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 184
    iget v8, v4, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 189
    :goto_2
    move-object v1, v5

    .line 180
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_1

    .line 177
    .end local v1    # "prev":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v2    # "i":J
    .end local v4    # "result":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "size":J
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v8

    int-to-long v6, v8

    goto :goto_0

    .line 186
    .restart local v1    # "prev":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v2    # "i":J
    .restart local v4    # "result":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v5    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v6    # "size":J
    :cond_1
    iput-object v5, v4, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 187
    const/4 v8, 0x1

    iput v8, v4, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_2

    .line 191
    .end local v5    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_2
    return-object v4
.end method

.method protected parseObject(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 14
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v5, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v10, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 139
    .local v5, "result":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 140
    .local v8, "type":B
    const/4 v9, 0x0

    .line 141
    .local v9, "valueType":B
    const/16 v10, 0x24

    if-ne v8, v10, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 143
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 145
    :cond_0
    const-wide/16 v6, -0x1

    .line 146
    .local v6, "size":J
    const/16 v10, 0x23

    if-ne v8, v10, :cond_4

    .line 147
    const/4 v10, 0x0

    const-wide/16 v12, -0x1

    invoke-virtual {p0, p1, v10, v12, v13}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v6

    .line 148
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gez v10, :cond_1

    new-instance v10, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v11, "Unrecognized data type"

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 149
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_3

    .line 170
    :cond_2
    return-object v5

    .line 150
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 152
    :cond_4
    const/4 v4, 0x0

    .line 153
    .local v4, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v0, 0x0

    .line 154
    .local v0, "c":J
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v10

    if-lez v10, :cond_2

    const/16 v10, 0x7d

    if-eq v8, v10, :cond_2

    .line 155
    const/4 v10, 0x1

    invoke-virtual {p0, p1, v10, v8}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "key":Ljava/lang/String;
    if-nez v9, :cond_6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    :goto_1
    invoke-virtual {p0, p1, v10}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 157
    .local v2, "child":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    .line 158
    if-eqz v4, :cond_7

    .line 159
    iput-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 160
    iput-object v2, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 161
    iget v10, v5, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v5, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 166
    :goto_2
    move-object v4, v2

    .line 167
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_5

    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    cmp-long v10, v0, v6

    if-gez v10, :cond_2

    .line 168
    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 169
    goto :goto_0

    .end local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_6
    move v10, v9

    .line 156
    goto :goto_1

    .line 163
    .restart local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_7
    iput-object v2, v5, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 164
    const/4 v10, 0x1

    iput v10, v5, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_2
.end method

.method protected parseSize(Ljava/io/DataInputStream;BZJ)J
    .locals 6
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "type"    # B
    .param p3, "useIntOnError"    # Z
    .param p4, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/16 v2, 0x69

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v2

    int-to-long v0, v2

    .line 226
    :goto_0
    return-wide v0

    .line 216
    :cond_0
    const/16 v2, 0x49

    if-ne p2, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUShort(Ljava/io/DataInputStream;)I

    move-result v2

    int-to-long v0, v2

    goto :goto_0

    .line 217
    :cond_1
    const/16 v2, 0x6c

    if-ne p2, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUInt(Ljava/io/DataInputStream;)J

    move-result-wide v0

    goto :goto_0

    .line 218
    :cond_2
    const/16 v2, 0x4c

    if-ne p2, v2, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    goto :goto_0

    .line 219
    :cond_3
    if-eqz p3, :cond_4

    .line 220
    int-to-short v2, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long v0, v2, v4

    .line 221
    .local v0, "result":J
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 222
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 223
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 224
    goto :goto_0

    .end local v0    # "result":J
    :cond_4
    move-wide v0, p4

    .line 226
    goto :goto_0
.end method

.method protected parseSize(Ljava/io/DataInputStream;ZJ)J
    .locals 7
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "useIntOnError"    # Z
    .param p3, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;BZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected parseString(Ljava/io/DataInputStream;B)Ljava/lang/String;
    .locals 1
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;
    .locals 10
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "sOptional"    # Z
    .param p3, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    .line 199
    const-wide/16 v6, -0x1

    .line 200
    .local v6, "size":J
    const/16 v0, 0x53

    if-ne p3, v0, :cond_1

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v6

    .line 205
    :cond_0
    :goto_0
    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unrecognized data type, string expected"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    const/16 v0, 0x73

    if-ne p3, v0, :cond_2

    .line 203
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v0

    int-to-long v6, v0

    goto :goto_0

    .line 204
    :cond_2
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;BZJ)J

    move-result-wide v6

    goto :goto_0

    .line 206
    :cond_3
    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    invoke-virtual {p0, p1, v6, v7}, Lcom/badlogic/gdx/utils/UBJsonReader;->readString(Ljava/io/DataInputStream;J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method protected readString(Ljava/io/DataInputStream;J)Ljava/lang/String;
    .locals 4
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    long-to-int v1, p2

    new-array v0, v1, [B

    .line 243
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 244
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected readUChar(Ljava/io/DataInputStream;)S
    .locals 1
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-short v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method protected readUInt(Ljava/io/DataInputStream;)J
    .locals 4
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUShort(Ljava/io/DataInputStream;)I
    .locals 2
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
