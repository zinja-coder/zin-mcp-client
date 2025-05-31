.class public Lcom/badlogic/gdx/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x1

.field public static final INFO:I = 0x2

.field public static final NONE:I


# instance fields
.field private level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    .line 42
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    iget v0, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 49
    iget v0, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    iget v0, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    iget v0, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :cond_0
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 53
    iget v0, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/badlogic/gdx/utils/Logger;->level:I

    .line 73
    return-void
.end method
