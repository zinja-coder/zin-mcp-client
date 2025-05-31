.class public interface abstract Lcom/badlogic/gdx/Files;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/Files$FileType;
    }
.end annotation


# virtual methods
.method public abstract absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
.end method

.method public abstract classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
.end method

.method public abstract external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
.end method

.method public abstract getExternalStoragePath()Ljava/lang/String;
.end method

.method public abstract getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;
.end method

.method public abstract getLocalStoragePath()Ljava/lang/String;
.end method

.method public abstract internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
.end method

.method public abstract isExternalStorageAvailable()Z
.end method

.method public abstract isLocalStorageAvailable()Z
.end method

.method public abstract local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
.end method
