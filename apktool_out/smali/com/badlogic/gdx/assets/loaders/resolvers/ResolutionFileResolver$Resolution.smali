.class public Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
.super Ljava/lang/Object;
.source "ResolutionFileResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolution"
.end annotation


# instance fields
.field public final folder:Ljava/lang/String;

.field public final portraitHeight:I

.field public final portraitWidth:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "portraitWidth"    # I
    .param p2, "portraitHeight"    # I
    .param p3, "folder"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    .line 67
    iput p2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    .line 68
    iput-object p3, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->folder:Ljava/lang/String;

    .line 69
    return-void
.end method
