.class public abstract Lcom/badlogic/gdx/files/FileHandleStream;
.super Lcom/badlogic/gdx/files/FileHandle;
.source "FileHandleStream.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    .line 32
    return-void
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public copyTo(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "dest"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()Z
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deleteDirectory()Z
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public list()[Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public mkdirs()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public moveTo(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "dest"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parent()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public write(Z)Ljava/io/OutputStream;
    .locals 1
    .param p1, "overwrite"    # Z

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
