.class public Lcom/badlogic/gdx/utils/SerializationException;
.super Ljava/lang/RuntimeException;
.source "SerializationException.java"


# instance fields
.field private trace:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method private causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 47
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 49
    :goto_0
    return v1

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/utils/SerializationException;->causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addTrace(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "info cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Ljava/lang/StringBuffer;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    return-void
.end method

.method public causedBy(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 42
    invoke-direct {p0, p0, p1}, Lcom/badlogic/gdx/utils/SerializationException;->causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Ljava/lang/StringBuffer;

    if-nez v1, :cond_0

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 55
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    :cond_1
    const-string v1, "Serialization trace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SerializationException;->trace:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
