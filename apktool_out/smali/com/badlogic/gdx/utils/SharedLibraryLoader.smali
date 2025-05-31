.class public Lcom/badlogic/gdx/utils/SharedLibraryLoader;
.super Ljava/lang/Object;
.source "SharedLibraryLoader.java"


# static fields
.field public static abi:Ljava/lang/String;

.field public static is64Bit:Z

.field public static isARM:Z

.field public static isAndroid:Z

.field public static isIos:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z

.field private static final loadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativesJar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Windows"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 38
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Linux"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 39
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Mac"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 40
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 41
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 42
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "arm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    .line 43
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "amd64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "x86_64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 47
    const-string v1, "sun.arch.abi"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "sun.arch.abi"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    sput-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->abi:Ljava/lang/String;

    .line 50
    const-string v1, "java.runtime.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "vm":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "Android Runtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 53
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 54
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 55
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 56
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 58
    :cond_1
    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    if-nez v1, :cond_2

    .line 59
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 60
    sput-boolean v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 64
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    return-void

    .end local v0    # "vm":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 43
    goto :goto_0

    .line 47
    :cond_4
    const-string v1, ""

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "nativesJar"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private canExecute(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 215
    :try_start_0
    const-class v2, Ljava/io/File;

    const-string v5, "canExecute"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 216
    .local v0, "canExecute":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 224
    .end local v0    # "canExecute":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 218
    .restart local v0    # "canExecute":Ljava/lang/reflect/Method;
    :cond_0
    const-class v2, Ljava/io/File;

    const-string v3, "setExecutable"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 219
    .local v1, "setExecutable":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 222
    .end local v0    # "canExecute":Ljava/lang/reflect/Method;
    .end local v1    # "setExecutable":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    move v2, v4

    .line 224
    goto :goto_0
.end method

.method private canWrite(Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 193
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canExecute(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v3

    .line 196
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v2, "testFile":Ljava/io/File;
    :goto_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 204
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canExecute(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 198
    .end local v2    # "testFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    move-object v2, p1

    .restart local v2    # "testFile":Ljava/io/File;
    goto :goto_1

    .line 205
    :cond_3
    const/4 v3, 0x1

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v3
.end method

.method private extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "sourceCrc"    # Ljava/lang/String;
    .param p3, "extractedFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "extractedCrc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 237
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 239
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 240
    .local v3, "input":Ljava/io/InputStream;
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 241
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 242
    .local v5, "output":Ljava/io/FileOutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 244
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 245
    .local v4, "length":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 248
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 249
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 255
    .end local v0    # "buffer":[B
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "output":Ljava/io/FileOutputStream;
    :cond_2
    return-object p3

    .line 246
    .restart local v0    # "buffer":[B
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 250
    .end local v0    # "buffer":[B
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error extracting file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nTo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 232
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libgdx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v2, "idealFile":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    .end local v2    # "idealFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 170
    .restart local v2    # "idealFile":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v1

    goto :goto_0

    .line 175
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 179
    :cond_2
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.libgdx/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .restart local v0    # "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v0

    goto :goto_0

    .line 183
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".temp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .restart local v0    # "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->canWrite(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_4
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1
.end method

.method private loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "sourceCrc"    # Ljava/lang/String;
    .param p3, "extractedFile"    # Ljava/io/File;

    .prologue
    .line 299
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private loadFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "sourcePath"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "sourceCrc":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "java.io.tmpdir"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/libgdx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, p1, v3, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v0

    .line 269
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v3, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 279
    :cond_2
    :goto_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.libgdx/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .restart local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1, v3, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 283
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".temp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .restart local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1, v3, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 287
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string v4, "java.library.path"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_3
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 275
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private readFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v4, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 125
    const-class v4, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 126
    .local v3, "input":Ljava/io/InputStream;
    if-nez v3, :cond_2

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read file for extraction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "file":Ljava/util/zip/ZipFile;
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 134
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in JAR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "file":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "ex":Ljava/io/IOException;
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in JAR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 135
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "file":Ljava/util/zip/ZipFile;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "file":Ljava/util/zip/ZipFile;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public crc(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 79
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "input cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_0
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 81
    .local v1, "crc":Ljava/util/zip/CRC32;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 84
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 85
    .local v3, "length":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 91
    .end local v3    # "length":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 86
    .restart local v3    # "length":I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 88
    .end local v3    # "length":I
    :catch_0
    move-exception v2

    .line 89
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "sourceCrc":Ljava/lang/String;
    if-nez p2, :cond_0

    move-object p2, v3

    .line 151
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->getExtractedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 152
    .local v1, "extractedFile":Ljava/io/File;
    invoke-direct {p0, p1, v3, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 156
    .end local v1    # "extractedFile":Ljava/io/File;
    .end local v3    # "sourceCrc":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/File;

    const-string v4, "java.library.path"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    throw v0
.end method

.method public declared-synchronized load(Ljava/lang/String;)V
    .locals 4
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 112
    :try_start_2
    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    if-eqz v1, :cond_2

    .line 113
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :goto_1
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 115
    :cond_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_5
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load shared library \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' for target: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v1, :cond_3

    const-string v1, ", 64-bit"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    const-string v1, ", 32-bit"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v0, :cond_1

    const-string v0, "64.dll"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    .end local p1    # "libraryName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p1

    .line 96
    .restart local p1    # "libraryName":Ljava/lang/String;
    :cond_1
    const-string v0, ".dll"

    goto :goto_0

    .line 97
    :cond_2
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->abi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v0, :cond_4

    const-string v0, "64.so"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, ".so"

    goto :goto_3

    .line 98
    :cond_5
    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    if-eqz v0, :cond_6

    const-string v0, "64.dylib"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string v0, ".dylib"

    goto :goto_4
.end method
