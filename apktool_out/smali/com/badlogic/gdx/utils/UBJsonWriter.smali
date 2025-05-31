.class public Lcom/badlogic/gdx/utils/UBJsonWriter;
.super Ljava/lang/Object;
.source "UBJsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;
    }
.end annotation


# instance fields
.field private current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

.field private named:Z

.field final out:Ljava/io/DataOutputStream;

.field private final stack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    .line 35
    instance-of v1, p1, Ljava/io/DataOutputStream;

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p1    # "out":Ljava/io/OutputStream;
    .local v0, "out":Ljava/io/OutputStream;
    move-object p1, v0

    .line 36
    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    check-cast p1, Ljava/io/DataOutputStream;

    .end local p1    # "out":Ljava/io/OutputStream;
    iput-object p1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    .line 37
    return-void
.end method

.method private checkName()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_1

    .line 533
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    .line 537
    :cond_1
    return-void
.end method


# virtual methods
.method public array()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_1

    .line 64
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/UBJsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method public array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 76
    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 565
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
    .line 557
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 558
    return-void
.end method

.method public name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Current item must be an object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_2

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 86
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    .line 96
    return-object p0

    .line 87
    :cond_2
    array-length v1, v0

    const/16 v2, 0x7fff

    if-gt v1, v2, :cond_3

    .line 88
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 89
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 92
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method public object()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_1

    .line 44
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/UBJsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 49
    return-object p0
.end method

.method public object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 56
    return-object p0
.end method

.method public pop()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method protected pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "silent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->named:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected an object, array, or value since a name was set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    if-eqz p1, :cond_1

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->current:Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    .line 552
    return-object p0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;->close()V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/UBJsonWriter$JsonObject;

    goto :goto_1
.end method

.method public set(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value([Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public value()Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 412
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 413
    return-object p0
.end method

.method public value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 105
    return-object p0
.end method

.method public value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 170
    return-object p0
.end method

.method public value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 151
    return-object p0
.end method

.method public value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 141
    return-object p0
.end method

.method public value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 123
    return-object p0
.end method

.method public value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 132
    return-object p0
.end method

.method public value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4
    .param p1, "value"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 352
    :goto_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 352
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    .line 351
    .end local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->object()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_0

    .line 354
    .restart local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 381
    .end local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    return-object p0

    .line 355
    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 360
    :goto_3
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_4
    if-eqz v0, :cond_4

    .line 361
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 360
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4

    .line 359
    .end local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_3

    .line 362
    .restart local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_2

    .line 363
    .end local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 364
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 365
    :cond_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_2

    .line 366
    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 367
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 368
    :cond_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_2

    .line 369
    :cond_9
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 370
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 371
    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_2

    .line 372
    :cond_b
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 373
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 374
    :cond_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto :goto_2

    .line 375
    :cond_d
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 376
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 377
    :cond_e
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    goto/16 :goto_2

    .line 379
    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unhandled JsonValue type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    if-nez p1, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value()Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    .line 405
    .end local p0    # "this":Lcom/badlogic/gdx/utils/UBJsonWriter;
    :cond_0
    :goto_0
    return-object p0

    .line 390
    .restart local p0    # "this":Lcom/badlogic/gdx/utils/UBJsonWriter;
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_7

    move-object v0, p1

    .line 391
    check-cast v0, Ljava/lang/Number;

    .line 392
    .local v0, "number":Ljava/lang/Number;
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(B)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    goto :goto_0

    .line 393
    :cond_2
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    goto :goto_0

    .line 394
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    goto :goto_0

    .line 395
    :cond_4
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(J)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    goto :goto_0

    .line 396
    :cond_5
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(F)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    goto :goto_0

    .line 397
    :cond_6
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(D)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    goto :goto_0

    .line 398
    .end local v0    # "number":Ljava/lang/Number;
    :cond_7
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_8

    .line 399
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(C)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    goto :goto_0

    .line 400
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;

    move-result-object p0

    goto :goto_0

    .line 403
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unknown object type."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public value(Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 177
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 178
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 179
    array-length v1, v0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 181
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 190
    return-object p0

    .line 182
    :cond_0
    array-length v1, v0

    const/16 v2, 0x7fff

    if-gt v1, v2, :cond_1

    .line 183
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 184
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 187
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method public value(S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 114
    return-object p0
.end method

.method public value(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->checkName()V

    .line 159
    iget-object v1, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_0

    const/16 v0, 0x54

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 160
    return-object p0

    .line 159
    :cond_0
    const/16 v0, 0x46

    goto :goto_0
.end method

.method public value([B)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4
    .param p1, "values"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 198
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 199
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 200
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 201
    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 206
    return-object p0
.end method

.method public value([C)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4
    .param p1, "values"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 306
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 307
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x49

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 308
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 309
    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 311
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 314
    return-object p0
.end method

.method public value([D)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 6
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 279
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 280
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 281
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 282
    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 287
    return-object p0
.end method

.method public value([F)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4
    .param p1, "values"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 262
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 263
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 264
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 265
    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 267
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 270
    return-object p0
.end method

.method public value([I)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 230
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 231
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 232
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 233
    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 238
    return-object p0
.end method

.method public value([J)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 6
    .param p1, "values"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 246
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 247
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x49

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 248
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 249
    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 254
    return-object p0
.end method

.method public value([Ljava/lang/String;)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 5
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 322
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 323
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 324
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 325
    array-length v3, p1

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 327
    aget-object v3, p1, v1

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 328
    .local v0, "bytes":[B
    array-length v3, v0

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    .line 329
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 330
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 338
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_0
    array-length v3, v0

    const/16 v4, 0x7fff

    if-gt v3, v4, :cond_1

    .line 332
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x49

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 333
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 336
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 340
    .end local v0    # "bytes":[B
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 341
    return-object p0
.end method

.method public value([S)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4
    .param p1, "values"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 214
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 215
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x49

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 216
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 217
    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->value(I)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    iget-object v2, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-short v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop(Z)Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 222
    return-object p0
.end method

.method public value([Z)Lcom/badlogic/gdx/utils/UBJsonWriter;
    .locals 4
    .param p1, "values"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->array()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 295
    iget-object v3, p0, Lcom/badlogic/gdx/utils/UBJsonWriter;->out:Ljava/io/DataOutputStream;

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    const/16 v2, 0x54

    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    const/16 v2, 0x46

    goto :goto_1

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/UBJsonWriter;->pop()Lcom/badlogic/gdx/utils/UBJsonWriter;

    .line 298
    return-object p0
.end method
