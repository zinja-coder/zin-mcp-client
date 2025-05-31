.class Lde/fgerbig/spacepeng/systems/DirectorSystem$6;
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
    .line 313
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$6;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-direct {p0, p1, p2}, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$6;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v0, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->hud:Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    sget-object v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->NEW_HIGHSCORE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    iput-object v1, v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 317
    return-void
.end method
