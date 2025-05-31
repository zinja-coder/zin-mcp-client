.class public Lcom/badlogic/gdx/utils/JsonWriter;
.super Ljava/io/Writer;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonWriter$1;,
        Lcom/badlogic/gdx/utils/JsonWriter$OutputType;,
        Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;
    }
.end annotation


# instance fields
.field private current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

.field private named:Z

.field private outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field private quoteLongValues:Z

.field private final stack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    .line 32
    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->quoteLongValues:Z

    .line 36
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    .line 37
    return-void
.end method


# virtual methods
.method public array()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 95
    return-object p0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->named:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->named:Z

    goto :goto_0
.end method

.method public array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 153
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 147
    return-void
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current item must be an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 62
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/JsonWriter;->named:Z

    .line 63
    return-object p0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public object()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 79
    return-object p0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->named:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/JsonWriter;->named:Z

    goto :goto_0
.end method

.method public object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public pop()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->named:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected an object, array, or value since a name was set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->close()V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    .line 138
    return-object p0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 0
    .param p1, "outputType"    # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 46
    return-void
.end method

.method public setQuoteLongValues(Z)V
    .locals 0
    .param p1, "quoteLongValues"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->quoteLongValues:Z

    .line 52
    return-void
.end method

.method public value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->quoteLongValues:Z

    if-eqz v3, :cond_3

    instance-of v3, p1, Ljava/lang/Long;

    if-nez v3, :cond_0

    instance-of v3, p1, Ljava/lang/Double;

    if-nez v3, :cond_0

    instance-of v3, p1, Ljava/math/BigDecimal;

    if-nez v3, :cond_0

    instance-of v3, p1, Ljava/math/BigInteger;

    if-eqz v3, :cond_3

    .line 101
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    .end local p1    # "value":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v3, v3, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v3, :cond_5

    .line 109
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v3, v3, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v3, :cond_4

    .line 110
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 118
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonWriter;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    return-object p0

    .line 102
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 103
    check-cast v2, Ljava/lang/Number;

    .line 104
    .local v2, "number":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 105
    .local v0, "longValue":J
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    long-to-double v6, v0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .local p1, "value":Ljava/lang/Long;
    goto :goto_0

    .line 112
    .end local v0    # "longValue":J
    .end local v2    # "number":Ljava/lang/Number;
    .end local p1    # "value":Ljava/lang/Long;
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 114
    :cond_5
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->named:Z

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Name must be set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/JsonWriter;->named:Z

    goto :goto_1
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 143
    return-void
.end method
