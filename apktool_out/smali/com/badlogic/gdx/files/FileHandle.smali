.class public Lcom/badlogic/gdx/files/FileHandle;
.super Ljava/lang/Object;
.source "FileHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/files/FileHandle$1;
    }
.end annotation


# instance fields
.field protected file:Ljava/io/File;

.field protected type:Lcom/badlogic/gdx/Files$FileType;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    .line 71
    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    iput-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    .line 72
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Lcom/badlogic/gdx/Files$FileType;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    .line 81
    iput-object p2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    .line 63
    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    iput-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/badlogic/gdx/Files$FileType;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    .line 77
    return-void
.end method

.method private static copyDirectory(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 6
    .param p0, "sourceDir"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "destDir"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 693
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 694
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 695
    .local v1, "files":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 696
    aget-object v4, v1, v2

    .line 697
    .local v4, "srcFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 698
    .local v0, "destFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    invoke-static {v4, v0}, Lcom/badlogic/gdx/files/FileHandle;->copyDirectory(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 695
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    :cond_0
    invoke-static {v4, v0}, Lcom/badlogic/gdx/files/FileHandle;->copyFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    goto :goto_1

    .line 703
    .end local v0    # "destFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "srcFile":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1
    return-void
.end method

.method private static copyFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 4
    .param p0, "source"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "dest"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 685
    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->write(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error copying source file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "To destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 679
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->emptyDirectory(Ljava/io/File;Z)V

    .line 680
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private static emptyDirectory(Ljava/io/File;Z)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "preserveTree"    # Z

    .prologue
    .line 663
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 664
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 665
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 666
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 667
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 668
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 666
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    :cond_0
    if-eqz p1, :cond_1

    .line 670
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->emptyDirectory(Ljava/io/File;Z)V

    goto :goto_1

    .line 672
    :cond_1
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/badlogic/gdx/files/FileHandle;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_1

    .line 676
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    return-void
.end method

.method private estimateLength()I
    .locals 4

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 234
    .local v0, "length":I
    if-eqz v0, :cond_0

    .end local v0    # "length":I
    :goto_0
    return v0

    .restart local v0    # "length":I
    :cond_0
    const/16 v0, 0x200

    goto :goto_0
.end method

.method public static tempDirectory(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 653
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 654
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 658
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Unable to create temp file."

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 655
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create temp directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method public static tempFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 645
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unable to create temp file."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    .line 493
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    goto :goto_0
.end method

.method public copyTo(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 4
    .param p1, "dest"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    .line 575
    .local v0, "sourceDir":Z
    if-nez v0, :cond_1

    .line 576
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    .line 577
    :cond_0
    invoke-static {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->copyFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 588
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination exists but is not a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 584
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination directory cannot be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    .line 587
    :cond_4
    invoke-static {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->copyDirectory(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    goto :goto_0
.end method

.method public delete()Z
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public deleteDirectory()Z
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/files/FileHandle;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public emptyDirectory()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->emptyDirectory(Z)V

    .line 555
    return-void
.end method

.method public emptyDirectory(Z)V
    .locals 3
    .param p1, "preserveTree"    # Z

    .prologue
    .line 560
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/files/FileHandle;->emptyDirectory(Ljava/io/File;Z)V

    .line 563
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 626
    instance-of v2, p1, Lcom/badlogic/gdx/files/FileHandle;

    if-nez v2, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 627
    check-cast v0, Lcom/badlogic/gdx/files/FileHandle;

    .line 628
    .local v0, "other":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    iget-object v3, v0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exists()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 525
    sget-object v1, Lcom/badlogic/gdx/files/FileHandle$1;->$SwitchMap$com$badlogic$gdx$Files$FileType:[I

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2}, Lcom/badlogic/gdx/Files$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 532
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 527
    :pswitch_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    :pswitch_1
    const-class v1, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 98
    .local v0, "dotIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, ""

    .line 99
    :goto_0
    return-object v2

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public file()Ljava/io/File;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1}, Lcom/badlogic/gdx/Files;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 633
    const/4 v0, 0x1

    .line 634
    .local v0, "hash":I
    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/Files$FileType;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x25

    .line 635
    mul-int/lit8 v1, v0, 0x43

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 636
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 4

    .prologue
    .line 604
    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 607
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v2, v1

    .line 610
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 614
    .end local v0    # "input":Ljava/io/InputStream;
    :goto_0
    return-wide v2

    .line 608
    .restart local v0    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 610
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 612
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 614
    .end local v0    # "input":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0
.end method

.method public list()[Lcom/badlogic/gdx/files/FileHandle;
    .locals 7

    .prologue
    .line 394
    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v5, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v4, v5, :cond_0

    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot list a classpath directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "relativePaths":[Ljava/lang/String;
    if-nez v3, :cond_2

    const/4 v4, 0x0

    new-array v0, v4, [Lcom/badlogic/gdx/files/FileHandle;

    .line 400
    :cond_1
    return-object v0

    .line 397
    :cond_2
    array-length v4, v3

    new-array v0, v4, [Lcom/badlogic/gdx/files/FileHandle;

    .line 398
    .local v0, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 399
    aget-object v4, v3, v1

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    aput-object v4, v0, v1

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public list(Ljava/io/FileFilter;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 12
    .param p1, "filter"    # Ljava/io/FileFilter;

    .prologue
    const/4 v11, 0x0

    .line 409
    iget-object v9, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v10, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v9, v10, :cond_0

    new-instance v9, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot list a classpath directory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v2

    .line 411
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, "relativePaths":[Ljava/lang/String;
    if-nez v8, :cond_2

    new-array v3, v11, [Lcom/badlogic/gdx/files/FileHandle;

    .line 427
    :cond_1
    :goto_0
    return-object v3

    .line 413
    :cond_2
    array-length v9, v8

    new-array v3, v9, [Lcom/badlogic/gdx/files/FileHandle;

    .line 414
    .local v3, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v1, 0x0

    .line 415
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v8

    .local v5, "n":I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 416
    aget-object v7, v8, v4

    .line 417
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 418
    .local v0, "child":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 415
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 419
    :cond_3
    aput-object v0, v3, v1

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 422
    .end local v0    # "child":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7    # "path":Ljava/lang/String;
    :cond_4
    array-length v9, v8

    if-ge v1, v9, :cond_1

    .line 423
    new-array v6, v1, [Lcom/badlogic/gdx/files/FileHandle;

    .line 424
    .local v6, "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v3, v11, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    move-object v3, v6

    goto :goto_0
.end method

.method public list(Ljava/io/FilenameFilter;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 11
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    const/4 v10, 0x0

    .line 436
    iget-object v8, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v9, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v8, v9, :cond_0

    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot list a classpath directory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    .line 438
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 439
    .local v7, "relativePaths":[Ljava/lang/String;
    if-nez v7, :cond_2

    new-array v2, v10, [Lcom/badlogic/gdx/files/FileHandle;

    .line 453
    :cond_1
    :goto_0
    return-object v2

    .line 440
    :cond_2
    array-length v8, v7

    new-array v2, v8, [Lcom/badlogic/gdx/files/FileHandle;

    .line 441
    .local v2, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v0, 0x0

    .line 442
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v7

    .local v4, "n":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 443
    aget-object v6, v7, v3

    .line 444
    .local v6, "path":Ljava/lang/String;
    invoke-interface {p1, v1, v6}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 442
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 445
    :cond_3
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    aput-object v8, v2, v0

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 448
    .end local v6    # "path":Ljava/lang/String;
    :cond_4
    array-length v8, v7

    if-ge v0, v8, :cond_1

    .line 449
    new-array v5, v0, [Lcom/badlogic/gdx/files/FileHandle;

    .line 450
    .local v5, "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v2, v10, v5, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    move-object v2, v5

    goto :goto_0
.end method

.method public list(Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 10
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 461
    iget-object v7, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v8, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v7, v8, :cond_0

    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot list a classpath directory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "relativePaths":[Ljava/lang/String;
    if-nez v6, :cond_2

    new-array v1, v9, [Lcom/badlogic/gdx/files/FileHandle;

    .line 477
    :cond_1
    :goto_0
    return-object v1

    .line 464
    :cond_2
    array-length v7, v6

    new-array v1, v7, [Lcom/badlogic/gdx/files/FileHandle;

    .line 465
    .local v1, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v0, 0x0

    .line 466
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v6

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 467
    aget-object v5, v6, v2

    .line 468
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 466
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    aput-object v7, v1, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 472
    .end local v5    # "path":Ljava/lang/String;
    :cond_4
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 473
    new-array v4, v0, [Lcom/badlogic/gdx/files/FileHandle;

    .line 474
    .local v4, "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v1, v9, v4, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    move-object v1, v4

    goto :goto_0
.end method

.method public mkdirs()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot mkdirs with a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot mkdirs with an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 520
    return-void
.end method

.method public moveTo(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 3
    .param p1, "dest"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->copyTo(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 597
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    .line 598
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->deleteDirectory()Z

    .line 599
    :cond_2
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nameWithoutExtension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 106
    .local v0, "dotIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 107
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public parent()Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    .prologue
    .line 505
    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 506
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_1

    .line 508
    new-instance v0, Ljava/io/File;

    .end local v0    # "parent":Ljava/io/File;
    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .restart local v0    # "parent":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v1

    .line 510
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "parent":Ljava/io/File;
    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "parent":Ljava/io/File;
    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pathWithoutExtension()Ljava/lang/String;
    .locals 5

    .prologue
    .line 113
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "path":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 115
    .local v0, "dotIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 116
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "path":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public read(I)Ljava/io/BufferedInputStream;
    .locals 2
    .param p1, "bufferSize"    # I

    .prologue
    .line 151
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public read()Ljava/io/InputStream;
    .locals 7

    .prologue
    .line 133
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Local:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    :cond_1
    const-class v2, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 136
    .local v1, "input":Ljava/io/InputStream;
    if-nez v1, :cond_3

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open a stream to a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 144
    :cond_4
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readBytes([BII)I
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    .line 244
    .local v2, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 247
    .local v3, "position":I
    :goto_0
    add-int v4, p2, v3

    sub-int v5, p3, v3

    :try_start_0
    invoke-virtual {v2, p1, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 248
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 254
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 256
    sub-int v4, v3, p2

    return v4

    .line 249
    :cond_0
    add-int/2addr v3, v0

    .line 250
    goto :goto_0

    .line 251
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 252
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4
.end method

.method public readBytes()[B
    .locals 5

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    .line 224
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/files/FileHandle;->estimateLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 228
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/badlogic/gdx/files/FileHandle;->estimateLength()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 201
    .local v4, "reader":Ljava/io/InputStreamReader;
    if-nez p1, :cond_0

    .line 202
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .local v5, "reader":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 205
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :goto_0
    const/16 v6, 0x100

    new-array v0, v6, [C

    .line 207
    .local v0, "buffer":[C
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 208
    .local v2, "length":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 214
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 204
    .end local v0    # "buffer":[C
    .end local v2    # "length":I
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 209
    .restart local v0    # "buffer":[C
    .restart local v2    # "length":I
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 211
    .end local v0    # "buffer":[C
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 212
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading layout file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
.end method

.method public reader(I)Ljava/io/BufferedReader;
    .locals 3
    .param p1, "bufferSize"    # I

    .prologue
    .line 175
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method public reader(ILjava/lang/String;)Ljava/io/BufferedReader;
    .locals 4
    .param p1, "bufferSize"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reader()Ljava/io/Reader;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/Reader;
    .locals 5
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    .line 165
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 168
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot get the sibling of the root."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/badlogic/gdx/Files$FileType;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    return-object v0
.end method

.method public write(Z)Ljava/io/OutputStream;
    .locals 4
    .param p1, "append"    # Z

    .prologue
    .line 264
    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write to a classpath file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write to an internal file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 268
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open a stream to a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 272
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(ZI)Ljava/io/OutputStream;
    .locals 2
    .param p1, "append"    # Z
    .param p2, "bufferSize"    # I

    .prologue
    .line 282
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public write(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 294
    const/16 v2, 0x1000

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 302
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error stream writing to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public writeBytes([BIIZ)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "append"    # Z

    .prologue
    .line 379
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 381
    .local v1, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 387
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public writeBytes([BZ)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z

    .prologue
    .line 364
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 366
    .local v1, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 372
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public writeString(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    .line 340
    return-void
.end method

.method public writeString(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 350
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/files/FileHandle;->writer(ZLjava/lang/String;)Ljava/io/Writer;

    move-result-object v1

    .line 351
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 357
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public writer(Z)Ljava/io/Writer;
    .locals 1
    .param p1, "append"    # Z

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->writer(ZLjava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public writer(ZLjava/lang/String;)Ljava/io/Writer;
    .locals 5
    .param p1, "append"    # Z
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot write to a classpath file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot write to an internal file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 322
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 323
    .local v1, "output":Ljava/io/FileOutputStream;
    if-nez p2, :cond_2

    .line 324
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 326
    :goto_0
    return-object v2

    :cond_2
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v1    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open a stream to a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 330
    :cond_3
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
