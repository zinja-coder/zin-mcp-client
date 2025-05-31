.class public Lcom/badlogic/gdx/utils/XmlWriter;
.super Ljava/io/Writer;
.source "XmlWriter.java"


# instance fields
.field private currentElement:Ljava/lang/String;

.field public indent:I

.field private indentNextClose:Z

.field private final stack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    .line 52
    return-void
.end method

.method private indent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    .line 56
    .local v0, "count":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method private startElementContent()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    .line 76
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    if-nez p2, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 90
    return-object p0

    .line 88
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 126
    return-void
.end method

.method public element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->startElementContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->indent()V

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/XmlWriter;->element(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/XmlWriter;->text(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlWriter;->pop()Lcom/badlogic/gdx/utils/XmlWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 135
    return-void
.end method

.method public pop()Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, "/>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->currentElement:Ljava/lang/String;

    .line 117
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    .line 118
    return-object p0

    .line 111
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indent:I

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->indent()V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->stack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public text(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/XmlWriter;
    .locals 4
    .param p1, "text"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 94
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->startElementContent()Z

    .line 95
    if-nez p1, :cond_2

    const-string v0, "null"

    .line 96
    .local v0, "string":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    .line 97
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    .line 99
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->indent()V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->indentNextClose:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    .line 103
    :cond_1
    return-object p0

    .line 95
    .end local v0    # "string":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    .restart local v0    # "string":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

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
    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlWriter;->startElementContent()Z

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 131
    return-void
.end method
