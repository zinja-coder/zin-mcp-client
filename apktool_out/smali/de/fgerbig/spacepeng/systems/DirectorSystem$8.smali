.class Lde/fgerbig/spacepeng/systems/DirectorSystem$8;
.super Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;
.source "DirectorSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerKilled(Lde/fgerbig/spacepeng/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V
    .locals 0
    .param p2, "x0"    # F

    .prologue
    .line 336
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$8;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-direct {p0, p1, p2}, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 3

    .prologue
    .line 339
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->currentGame:Lde/fgerbig/spacepeng/SpacePeng;

    new-instance v1, Lde/fgerbig/spacepeng/screens/MenuScreen;

    sget-object v2, Lde/fgerbig/spacepeng/SpacePeng;->currentGame:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-direct {v1, v2}, Lde/fgerbig/spacepeng/screens/MenuScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/SpacePeng;->setScreen(Lcom/badlogic/gdx/Screen;)V

    .line 340
    return-void
.end method
