.class public Lcom/badlogic/gdx/assets/AssetDescriptor;
.super Ljava/lang/Object;
.source "AssetDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public file:Lcom/badlogic/gdx/files/FileHandle;

.field public final fileName:Ljava/lang/String;

.field public final params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/badlogic/gdx/assets/AssetDescriptor;, "Lcom/badlogic/gdx/assets/AssetDescriptor<TT;>;"
    .local p2, "assetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 3
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/badlogic/gdx/assets/AssetDescriptor;, "Lcom/badlogic/gdx/assets/AssetDescriptor<TT;>;"
    .local p2, "assetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "params":Lcom/badlogic/gdx/assets/AssetLoaderParameters;, "Lcom/badlogic/gdx/assets/AssetLoaderParameters<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->file:Lcom/badlogic/gdx/files/FileHandle;

    .line 50
    iput-object p2, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    .line 51
    iput-object p3, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/badlogic/gdx/assets/AssetDescriptor;, "Lcom/badlogic/gdx/assets/AssetDescriptor<TT;>;"
    .local p2, "assetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/badlogic/gdx/assets/AssetDescriptor;, "Lcom/badlogic/gdx/assets/AssetDescriptor<TT;>;"
    .local p2, "assetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "params":Lcom/badlogic/gdx/assets/AssetLoaderParameters;, "Lcom/badlogic/gdx/assets/AssetLoaderParameters<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "\\\\"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    .line 43
    iput-object p3, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    .local p0, "this":Lcom/badlogic/gdx/assets/AssetDescriptor;, "Lcom/badlogic/gdx/assets/AssetDescriptor<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
